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
<spring:url value="/resources/css/plugin/bootstrap.min.css" var="bootstrapCSS" />
<spring:url value="/resources/css/common/global.css" var="globalCSS" />
<spring:url value="/resources/js/jquery.min.js" var="jqueryJs" />
<spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJs" />
<spring:url value="/resources/js/bootstrap.bundle.min.js"
	var="bootstrapBundleJs" />
<link href="${bootstrapCSS}" rel="stylesheet" />
<link href="${globalCSS}" rel="stylesheet" />
<title>Admission Success</title>
</head>
<body>
<div class="card student-details">
  <div class="card-header">
    ${student1.studentName}
  </div>
  <div class="card-body">
	   <h3>Congratulations, your application is processed as below: </h3>
		<div>
		
		<table  class="table">
			<tbody>
			 <tr>
			 	<td><spring:message code="label.studentName"/></td>
			 	<td>${student1.studentName}</td>
			 </tr>
			 <tr>
			 	<td><spring:message code="label.studentHobby"/></td>
			 	<td>${student1.studentHobby}</td>
			 </tr>
			 <tr>
			 	<td><spring:message code="label.studentMobile"/></td>
			 	<td>${student1.studentMobile}</td>
			 </tr>
			 <tr>
			 	<td><spring:message code="label.studentDOB"/></td>
			 	<td>${student1.studentDOB}</td>
			 </tr>
			 <tr>
			 	<td><spring:message code="label.studentSkills"/></td>
			 	<td>${student1.studentSkills}</td>
			 </tr>
		
			 </tbody>
			</table>
		<br>
		<p>Student Address details:</p>
		<table  class="table">
		<tbody>
		 <tr>
		 	<td><spring:message code="label.country"/></td>
		 	<td>${student1.studentAddress.country} </td>
		 </tr>
		 <tr>
		 	<td><spring:message code="label.street"/></td>
		 	<td>${student1.studentAddress.street} </td>
		 </tr>
		 <tr>
		 	<td><spring:message code="label.city"/></td>
		 	<td>${student1.studentAddress.city} </td>
		 </tr>
		 <tr>
		 	<td><spring:message code="label.pincode"/></td>
		 	<td>${student1.studentAddress.pincode} </td>
		 </tr>
	
		 </tbody>
		</table>
		
		
		</div>
		</div>
		</div>
</body>
</html>