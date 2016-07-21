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
	
	
	<%-- <form  method="post"  action="/SpringMVCStudentAdmission/submitAdmissionForm.html">
		Student's Name: <input type = "text" name="studentName" /> <br>
		Student's Hobby: <input type = "text" name="studentHobby"/> <br>
		<input type="submit" value="Submit" />
	
	</form> --%>
	
	 <form:form  method="post" modelAttribute="student" action="/SpringMVCStudentAdmission/submitAdmissionForm.html">
		Student's Name: <form:input  path="name" /> <br>
		Student's Hobby: <form:input path="hobby"/> <br>
		<input type="submit" value="Submit" />
	
	</form:form> 
	
</body>
</html>