<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>

<a href="/SpringMVCStudentAdmission/admissionForm.html?siteLanguage=en">English</a>|
<a href="/SpringMVCStudentAdmission/admissionForm.html?siteLanguage=fr">French</a>


	<h1>${mess}</h1>
	
<%-- 	<form:errors path="student.*"/> --%>

	<h1><spring:message code="label.admissionForm"/></h1>
	<h1><spring:message code="label.headerMessage"/></h1>
	

	<form  method="post"  action="/SpringMVCStudentAdmission/submitAdmissionForm.html">
			
		<spring:message code="label.tname"/>	 <input type = "text" name="name" /> 
		<form:errors path="student.name"/>
		
		<br>  <%-- name and hobby should be the same in Student class --%>
		<spring:message code="label.hobby"/>	 <input type = "text" name="hobby"/>		
		<form:errors path="student.hobby"/> <br>
		
		Student's Birthday: <input type = "text" name="birthday"/> 		
		<form:errors path="student.birthday"/>
		<br>
		
		Student's Mobile: <input type = "text" name="mobile"/>
		<form:errors path="student.mobile"/> 
		<br>
		
		Student's Skills: <select name="skills" multiple >
								<option value ="Java Core">Java Core</option>
								<option value="SQL">SQL</option>
								<option value="SpringMVC">SpringMVC</option>
								
							</select>
		
		<br>
		<spring:message code="label.address"/>
		<spring:message code="label.country"/>
		<input type ="text" name="address.country">
		
		<spring:message code="label.city"/>
		<input type ="text" name="address.city">
		
		<spring:message code="label.street"/>
		<input type ="text" name="address.street">
		
		<spring:message code="label.zipcode"/>
		<input type ="text" name="address.pincode">
		<br>
		
		<input type="submit" value=<spring:message code="label.submit.admissionForm"/> />
		<input type="submit" value="Submit" />
	
	</form>
	
	
	
	<%--  <form:form  method="post" modelAttribute="student" action="/SpringMVCStudentAdmission/submitAdmissionForm.html">
		Student's Name: <form:input  path="name" /> <br>
		Student's Hobby: <form:input path="hobby"/> <br>
		<input type="submit" value="Submit" />
	</form:form>  --%>
	
</body>
</html>