package com.abhishek.support;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class HobbyValidator implements ConstraintValidator<IsValidHobby, String> {
	
	private String validOptions;
	
	@Override
	public void initialize(IsValidHobby isValidHobby) {
		validOptions = isValidHobby.valOptions();
	}
	
	@Override
	public boolean isValid(String studentHobby, ConstraintValidatorContext context) {
		if(studentHobby == null){
			return false;
		}
		
		if(studentHobby.matches(validOptions)) {
			return true;
		} else {
			return false;
		}
		
	}

}
