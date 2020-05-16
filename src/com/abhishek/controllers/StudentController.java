package com.abhishek.controllers;

import java.util.ArrayList;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.abhishek.models.Student;

@RestController
public class StudentController {
	
	@RequestMapping(value="/students",method = RequestMethod.GET, produces=MediaType.APPLICATION_JSON_VALUE)
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
	
	@RequestMapping(value="/students/{name}",method = RequestMethod.PUT)
	public ResponseEntity<Student> updateStudent(@PathVariable String name, @RequestBody Student student) {
		
		
		
		student.setStudentName(name + "Abhi");
		if(name.equalsIgnoreCase("Abhi")) {
			return new ResponseEntity<Student>(new Student(),HttpStatus.NOT_FOUND);
		}
		HttpHeaders httpHeaders = new HttpHeaders();
		httpHeaders.add("key1", "Hello");
		httpHeaders.add("key2", "unlucky");
		return  new ResponseEntity<Student>(student, httpHeaders, HttpStatus.OK);
		
	}
	
	@RequestMapping(value="/students",method = RequestMethod.POST,consumes=MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Student> createStudent(@RequestBody Student student) {	
		
		if(student.getStudentName().equalsIgnoreCase("Abhi")) {
			return new ResponseEntity<Student>(new Student(),HttpStatus.FOUND);
		}
		HttpHeaders httpHeaders = new HttpHeaders();
		httpHeaders.add("location",
				ServletUriComponentsBuilder.fromCurrentRequest()
				.path("/name")
				.buildAndExpand(student.getStudentName()).toUri()
				.toString());
		return  new ResponseEntity<Student>(student, httpHeaders, HttpStatus.CREATED);
		
	}
	
	@RequestMapping(value="/students/{name}",method = RequestMethod.DELETE)
	public ResponseEntity<Student> deleteStudent(@PathVariable String name) {
		
		Student student =  new Student();
		
		student.setStudentName(name + "Abhi");
		if(name.equalsIgnoreCase("Abhi")) {
			return new ResponseEntity<Student>(new Student(),HttpStatus.NOT_FOUND);
		}
		HttpHeaders httpHeaders = new HttpHeaders();
		httpHeaders.add("key1", "Hello");
	
		return  new ResponseEntity<Student>(student, httpHeaders, HttpStatus.OK);
		
	}

}
