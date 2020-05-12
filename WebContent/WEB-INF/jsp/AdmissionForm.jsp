<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />
<spring:url value="/resources/css/global.css" var="globalCSS" />
<spring:url value="/resources/js/jquery.min.js" var="jqueryJs" />
<spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJs" />
<spring:url value="/resources/js/bootstrap.bundle.min.js"
	var="bootstrapBundleJs" />
<link href="${bootstrapCSS}" rel="stylesheet" />
<link href="${globalCSS}" rel="stylesheet" />
<title>Admission Form</title>

</head>
<body>
	<div class="jumbotron text-center" style="margin-bottom: 0">
		<h1>${headerMessage}</h1>
		<p>Inspired from the guidance of Prasad Raut!</p>
	</div>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark"> <a
		class="navbar-brand" href="#">Navbar</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#collapsibleNavbar">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="collapsibleNavbar">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="#">Enroll
					Form</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Welcome</a></li>
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
						
							<label for="studentName">Student's Name</label>
							<input type="text" id="studentName" class="form-control" name="studentName" />
						</div>
					
					</div>
					<div class="row form-group">
						<div class="col-12">
						
							<label for="studentHobby">Student's hobby</label>
							<input type="text" id="studentHobby" class="form-control" name="studentHobby" />
						</div>
					
					</div>
					<div class="row form-group">
						<div class="col-6">
						
							<label for="studentMobile">Student's Mobile</label>
							<input type="text" id="studentMobile" class="form-control" name="studentMobile" />
						</div>
						<div class="col-6">
						
							<label for="studentDOB">Student's DOB</label>
							
							<input type="text" id="studentDOB" class="form-control" name="studentDOB" />
						
						</div>
					</div>		
					<div class="row form-group">
						<div class="col-12">
						
							<label for="studentSkills">Student's skills</label>
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
							    <label for="country" class="col-2 form-label">Country</label>
							    <div class="col-10">
							      <input type="text" class="form-control" id="country" name="studentAddress.country" />
							    </div>
							  </div>
						</div>
					
						<div class="col-6">
							<div class="form-group row">
							    <label for="street" class="col-2 form-label">Street</label>
							    <div class="col-10">
							      <input type="text" class="form-control" id="street" name="studentAddress.street" />
							    </div>
							  </div>
						</div>
					</div>

					<div class="row">
						<div class="col-6">
							<div class="form-group row">
							    <label for="city" class="col-2 form-label">City</label>
							    <div class="col-10">
							      <input type="text" class="form-control" id="city" name="studentAddress.city" />
							    </div>
							  </div>
						</div>
					
						<div class="col-6">
							<div class="form-group row">
							    <label for="pincode" class="col-2 form-label">Pin Code </label>
							    <div class="col-10">
							      <input type="text" class="form-control" id="pincode" name="studentAddress.pincode" />
							    </div>
							  </div>
						</div>
					</div>
					

					<input type="submit" class="btn btn-primary" value="Submit form" />
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