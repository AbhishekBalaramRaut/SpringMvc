package com.abhishek.controllers;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.abhishek.models.Student;


@Controller
public class AdmissionForm {
	
	
	@RequestMapping(value="/admission.html", method=RequestMethod.GET)
	public ModelAndView getAdmissionForm() {
		ModelAndView mvc = new ModelAndView("AdmissionForm");
		
		return mvc;
	}
	
	@ModelAttribute
	public void commonHeaders(Model model) {
		model.addAttribute("headerMessage", "Welcome  to Raut college of engineering");
	}
	
	@RequestMapping(value="/submitForm.html",method = RequestMethod.POST)
	public ModelAndView submitForm(@ModelAttribute("student1") Student student2) {
		
		ModelAndView mvc = new ModelAndView("AdmissionSuccess");
		
		return mvc;
	}
}
