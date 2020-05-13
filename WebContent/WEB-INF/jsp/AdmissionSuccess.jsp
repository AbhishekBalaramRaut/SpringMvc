<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />
<spring:url value="/resources/css/global.css" var="globalCSS" />
<spring:url value="/resources/js/jquery.min.js" var="jqueryJs" />
<spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJs" />
<spring:url value="/resources/js/bootstrap.bundle.min.js"
	var="bootstrapBundleJs" />
<link href="${bootstrapCSS}" rel="stylesheet" />
<link href="${globalCSS}" rel="stylesheet" />
<title>Admission Success</title>
</head>
<body>
	<h1>${headerMessage} </h1>
	<h3>Congratulations, your application is processed as below: </h3>
	<div>
		<p>Student name: ${student1.studentName} </p>
		<p>Student hobby: ${student1.studentHobby} </p>
		<p>Student Mobile: ${student1.studentMobile} </p>
		<p>Student DOB : ${student1.studentDOB} </p>
		<p>Student Skills: ${student1.studentSkills} </p>
		<br>
		<p>Student Address details:  </p>
		<p>Country: ${student1.studentAddress.country} </p>
		<p>Street: ${student1.studentAddress.street} </p>
		<p>City: ${student1.studentAddress.city} </p>
		<p>Pin Code: ${student1.studentAddress.pincode} </p>
	</div>
</body>
</html>