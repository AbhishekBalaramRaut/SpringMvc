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
<link rel="stylesheet" href="<spring:theme code='styleSheet' />" type="text/css" />
<title><spring:message code="label.admissionForm" /></title>

</head>
<body>
	<div class="jumbotron text-center" style="margin-bottom: 0">
		<h1>${headerMessage}</h1>
		<h3><spring:message code="label.subHeader" /></h3>
	</div>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark"> <a
		class="navbar-brand" href="#"><spring:message code="label.navbar" /></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#collapsibleNavbar">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="collapsibleNavbar">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="#"><spring:message code="label.enrollForm" /></a></li>
			<li class="nav-item"><a class="nav-link" href="#"><spring:message code="label.welcome" /></a></li>
			<li class="nav-item"><a class="nav-link" href="${contextPath}/admission.html?siteLanguage=en"><spring:message code="label.english" /></a></li>
			<li class="nav-item"><a class="nav-link" href="${contextPath}/admission.html?siteLanguage=fr"><spring:message code="label.french" /></a></li>
			<li class="nav-item dropdown">
		        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          Theme
		        </a>
		        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
		          <a class="dropdown-item" href="${contextPath}/admission.html?siteTheme=dark">Dark</a>
		          <a class="dropdown-item" href="${contextPath}/admission.html?siteTheme=light">Light</a>
		        </div>
		     </li>
		</ul>
	</div>
	</nav>

	<div class="container main-section">
		<div class="row">
			<div class="col-12">
				<form:errors path="student1.*" />
				<form action="/SpringMvc/submitForm.html" method="post">
					<div class="row form-group">
						<div class="col-12">
						
							<label for="studentName"><spring:message code="label.studentName" /></label>
							<input type="text" id="studentName" class="form-control" name="studentName" />
						</div>
					
					</div>
					<div class="row form-group">
						<div class="col-12">
						
							<label for="studentHobby"><spring:message code="label.studentHobby" /></label>
							<input type="text" id="studentHobby" class="form-control" name="studentHobby" />
						</div>
					
					</div>
					<div class="row form-group">
						<div class="col-6">
						
							<label for="studentMobile"><spring:message code="label.studentMobile" /></label>
							<input type="text" id="studentMobile" class="form-control" name="studentMobile" />
						</div>
						<div class="col-6">
						
							<label for="studentDOB"><spring:message code="label.studentDOB" /></label>
							
							<input type="text" id="studentDOB" class="form-control" name="studentDOB" />
						
						</div>
					</div>		
					<div class="row form-group">
						<div class="col-12">
						
							<label for="studentSkills"><spring:message code="label.studentSkills" /></label>
							<select id="studentSkills" class="custom-select" name="studentSkills" multiple>
								<option value="Java core">Java Core</option>
								<option value="Spring core">Spring Core</option>
								<option value="Spring mvc">Spring mvc</option>
								<option value="Hibernate">Hibernate</option>

							</select>
						</div>
					
					</div>
	
  					<div class="row">
						<div class="col-6">
							<div class="form-group row">
							    <label for="country" class="col-2 form-label"><spring:message code="label.country" /></label>
							    <div class="col-10">
							      <input type="text" class="form-control" id="country" name="studentAddress.country" />
							    </div>
							  </div>
						</div>
					
						<div class="col-6">
							<div class="form-group row">
							    <label for="street" class="col-2 form-label"><spring:message code="label.street" /></label>
							    <div class="col-10">
							      <input type="text" class="form-control" id="street" name="studentAddress.street" />
							    </div>
							  </div>
						</div>
					</div>

					<div class="row">
						<div class="col-6">
							<div class="form-group row">
							    <label for="city" class="col-2 form-label"><spring:message code="label.city" /></label>
							    <div class="col-10">
							      <input type="text" class="form-control" id="city" name="studentAddress.city" />
							    </div>
							  </div>
						</div>
					
						<div class="col-6">
							<div class="form-group row">
							    <label for="pincode" class="col-2 form-label"><spring:message code="label.pincode" /> </label>
							    <div class="col-10">
							      <input type="text" class="form-control" id="pincode" name="studentAddress.pincode" />
							    </div>
							  </div>
						</div>
					</div>
					

					<button type="submit" class="btn btn-primary"><spring:message code="label.submitForm" /></button>
				</form>
			</div>
		</div>
	</div>
	<script src="${jqueryJs}"></script>
	<script src="${bootstrapBundleJs}"></script>
	<script src="${bootstrapJs}"></script>
	<script type="text/javascript">
	
	</script>
</body>
</html>