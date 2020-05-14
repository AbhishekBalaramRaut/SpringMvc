package com.abhishek.controllers;

import java.io.IOException;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class GlobalExceptionHandler {
	@ExceptionHandler(value=IOException.class)
	public String handleIOExeption(Exception ex) {
		System.out.println(ex.toString());
		return "IOExceptionFile";
	}
	
	@ExceptionHandler(value=ArithmeticException.class)
	public String handleArithExeption(Exception ex) {
		System.out.println(ex.toString());
		return "ArithExceptionFile";
	}
	
	@ResponseStatus(value= HttpStatus.INTERNAL_SERVER_ERROR) // this is important otherwise status will be 200 okay
	@ExceptionHandler(value=Exception.class)
	public String handleExeption(Exception ex) {
		System.out.println(ex.toString());
		return "Exception";
	}
}
