package com.abhishek.controllers;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class AdmissionForm {
	
	
	@RequestMapping(value="/admission.html", method=RequestMethod.GET)
	public ModelAndView getAdmissionForm() {
		ModelAndView mvc = new ModelAndView("AdmissionForm");
		mvc.addObject("headerMessage", "Welcome  to Raut college of engineering");
		return mvc;
	}
	
	@RequestMapping(value="/submitForm.html",method = RequestMethod.POST)
	public ModelAndView submitForm(@RequestParam() String studentName, 
									@RequestParam() String studentHobby) {
		ModelAndView mvc = new ModelAndView("AdmissionSuccess");
		mvc.addObject("headerMessage", "Welcome  to Raut college of engineering");
		mvc.addObject("messageText", "Welcome "+studentName+", your hobby is "+studentHobby);
		return mvc;
	}
}
