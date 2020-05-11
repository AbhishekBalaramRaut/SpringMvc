<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />
<spring:url value="/resources/js/jquery.min.js" var="jqueryJs" />
<spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJs" />
<spring:url value="/resources/js/bootstrap.bundle.min.js" var="bootstrapBundleJs" />
<link href="${bootstrapCSS}" rel="stylesheet" />

<title>Admission Form</title>

</head>
<body>
<h1>${headerMessage} </h1>

<div class="container">
  <div class="row">
    <div class="col-12">
<form:errors path="student1.*" />
<form action="/SpringMvc/submitForm.html" method="post">
	<div class="row">
    <div class="col-6">
	
		Student's Name: 
	</div>
	<div class="col-6">
	
		<input type="text" name="studentName" />
	</div>
	</div>
	<div class="row">
    <div class="col-6">
	
		Student's hobby: 
	</div>
	<div class="col-6">
	
		<input type="text" name="studentHobby" />
	</div>
	</div>

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
		
		
	<input type="submit" class="btn btn-success" value="Submit form" />
</form>
</div>
</div>
</div>
<script src="${jqueryJs}"></script>
<script src="${bootstrapBundleJs}"></script>
<script src="${bootstrapJs}"></script>
</body>
</html>