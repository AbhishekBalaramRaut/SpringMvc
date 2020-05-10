<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admission Form</title>
</head>
<body>
<h1>${headerMessage} </h1>

<form:errors path="student1.*" />
<form action="/SpringMvc/submitForm.html" method="post">
	<p>
		Student's Name: <input type="text" name="studentName" />
	</p>
	<p>
		Student's hobby: <input type="text" name="studentHobby" />
	</p>
	<p>
		Student's Mobile: <input type="text" name="studentMobile" />
	</p>
	<p>
		Student's DOB: <input type="text" name="studentDOB" />
	</p>
	<p>
		Student's skills: <select name="studentSkills" multiple>
							<option value="Java core">Java Core </option>
							<option value="Spring core">Spring Core </option>
							<option value="Spring mvc">Spring mvc </option>
							<option value="Hibernate">Hibernate</option>
							
							</select>
	</p>
	
		<p>Country:<input type="text" name="studentAddress.country" /></p>
		<p>Street: <input type="text" name="studentAddress.street" /> </p>
		<p>City: <input type="text" name="studentAddress.city" /> </p>
		<p>Pin Code: <input type="text" name="studentAddress.pincode" /> </p>
		
		
	<input type="submit" value="Submit form" />
</form>
</body>
</html>