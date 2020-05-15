package com.abhishek.controllers;

import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.abhishek.models.Student;
import com.abhishek.support.StudentNameEditor;


@Controller
public class AdmissionForm {
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		//binder.setDisallowedFields(new String[] {"studentMobile"});
		SimpleDateFormat format = new SimpleDateFormat("yyyy**MM***dd");
		binder.registerCustomEditor(Date.class,"studentDOB", new CustomDateEditor(format,false));

		binder.registerCustomEditor(String.class,"studentName", new StudentNameEditor());
	}
	
	@RequestMapping(value="/admission.html", method=RequestMethod.GET)
	public ModelAndView getAdmissionForm() throws Exception {
		String exception = "SQLException";
		
		if(exception.equalsIgnoreCase("IOException")) {
			throw new IOException();
		}
		else if(exception.equalsIgnoreCase("ArithmeticException")) {
			throw new ArithmeticException();
		}
		else if(exception.equalsIgnoreCase("SQLException")) {
			throw new SQLException();
		}
		else if(exception != "") {
			throw new Exception();
		}
		ModelAndView mvc = new ModelAndView("AdmissionForm");
		
		return mvc;
	}
	
	@ModelAttribute
	public void commonHeaders(Model model) {
		model.addAttribute("headerMessage", "Welcome  to Raut college of engineering");
	}
	
	
	@RequestMapping(value="/submitForm.html",method = RequestMethod.POST)
	public ModelAndView submitForm(@Valid @ModelAttribute("student1") Student student2, BindingResult result) {
		
		if(result.hasErrors()) {
			ModelAndView mvc = new ModelAndView("AdmissionForm");
			
			return mvc;
		}
		ModelAndView mvc = new ModelAndView("AdmissionSuccess");
		
		return mvc;
	}
	
	
	@ResponseBody
	@RequestMapping(value="/students",method = RequestMethod.GET)
	public ArrayList<Student> getAllStudents() {
		
		ArrayList<Student> students = new ArrayList<>();
		Student s1 = new Student();
		s1.setStudentName("Abhishek");
		
		Student s2 = new Student();
		s2.setStudentName("Abhishek");
		
		students.add(s1);
		students.add(s2);
		
		
		return students;
		
	}
	
	@ResponseBody
	@RequestMapping(value="/students/{name}",method = RequestMethod.GET)
	public Student getAllStudent(@PathVariable("name") String name1) {
		
		
		Student s1 = new Student();
		s1.setStudentName(name1);
		
		return s1;
		
	}
	
}
