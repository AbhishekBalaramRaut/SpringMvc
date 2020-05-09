package com.abhishek.controllers;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {
 
	@RequestMapping("/welcome/{name}")
	public ModelAndView helloWorld(@PathVariable("name") String name) {
		ModelAndView mvc = new ModelAndView("welcome");
		mvc.addObject("message", "Welcome "+name);
		return mvc;
	}
	
	@RequestMapping("/welcome/{country}/{name}")
	public ModelAndView hello2(@PathVariable Map<String,String> pathVars) {
		ModelAndView mvc = new ModelAndView("welcome");
		String country = pathVars.get("country");
		String name = pathVars.get("name");
		mvc.addObject("message", "Welcome "+name+", you are from "+country);
		return mvc;
	}
	
}
