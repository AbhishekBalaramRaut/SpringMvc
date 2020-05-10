package com.abhishek.support;

import java.beans.PropertyEditorSupport;

public class StudentNameEditor extends PropertyEditorSupport {

	@Override
	public void setAsText(String name) {
		if(name.contains("Mr.") || name.contains("Mrs.")) {
			setValue(name);
		} else {
			setValue("Mr. "+name);
		}
		
	}
}
