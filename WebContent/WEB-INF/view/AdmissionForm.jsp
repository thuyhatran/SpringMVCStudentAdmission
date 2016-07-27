<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
	<h1>${mess}</h1>
	
<%-- 	<form:errors path="student.*"/> --%>

	<form  method="post"  action="/SpringMVCStudentAdmission/submitAdmissionForm.html">
			
		Student's Name: <input type = "text" name="name" /> 
		<form:errors path="student.name"/>
		<br>  <%-- name and hobby should be the same in Student class --%>
		Student's Hobby: <input type = "text" name="hobby"/>
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
		
		Address country: <input type ="text" name="address.country">
		City: <input type ="text" name="address.city">
		Street: <input type ="text" name="address.street">
		Pin Code: <input type ="text" name="address.pincode">
		<br>
		
		
		<input type="submit" value="Submit" />
	
	</form>
	
	
	
	<%--  <form:form  method="post" modelAttribute="student" action="/SpringMVCStudentAdmission/submitAdmissionForm.html">
		Student's Name: <form:input  path="name" /> <br>
		Student's Hobby: <form:input path="hobby"/> <br>
		<input type="submit" value="Submit" />
	</form:form>  --%>
	
</body>
</html>