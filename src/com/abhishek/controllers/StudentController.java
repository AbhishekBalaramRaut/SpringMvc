package com.abhishek.controllers;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.abhishek.models.Student;

@RestController
public class StudentController {
	
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
	
	
	@RequestMapping(value="/students/{name}",method = RequestMethod.GET)
	public Student getAllStudent(@PathVariable("name") String name1) {
		
		
		Student s1 = new Student();
		s1.setStudentName(name1);
		
		return s1;
		
	}

}
