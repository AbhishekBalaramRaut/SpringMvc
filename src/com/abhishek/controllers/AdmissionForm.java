package com.abhishek.controllers;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.abhishek.models.Student;


@Controller
public class AdmissionForm {
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.setDisallowedFields(new String[] {"studentMobile"});
		SimpleDateFormat format = new SimpleDateFormat("yyyy**MM***dd");
		binder.registerCustomEditor(Date.class,"studentDOB", new CustomDateEditor(format,false));
	}
	
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
	public ModelAndView submitForm(@ModelAttribute("student1") Student student2, BindingResult result) {
		
		if(result.hasErrors()) {
			ModelAndView mvc = new ModelAndView("AdmissionForm");
			
			return mvc;
		}
		ModelAndView mvc = new ModelAndView("AdmissionSuccess");
		
		return mvc;
	}
}
