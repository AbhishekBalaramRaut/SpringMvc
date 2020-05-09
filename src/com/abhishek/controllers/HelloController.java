package com.abhishek.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {
 
	@RequestMapping("/welcome")
	public ModelAndView helloWorld() {
		ModelAndView mvc = new ModelAndView("welcome");
		String message = "<br><div style='text-align:center;'>"
				+ "<h3>********** Hello World, Spring MVC Tutorial</h3>This message is coming from CrunchifyHelloWorld.java **********</div><br><br>";
		mvc.addObject("message", message);
		return mvc;
	}
}