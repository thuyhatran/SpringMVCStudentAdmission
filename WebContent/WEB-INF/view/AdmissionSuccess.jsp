<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AdmissionSuccess</title>
</head>
<body>
<h1>${mess}</h1>
	<table>
		<tr>
			<td>Student Name: </td>
			<td>${student.name}</td>
			
		</tr>
		
		<tr>
			<td>Student Birthday: </td>
			<td>${student.birthday}</td>
		</tr>
		
		<tr>
			<td>Student Hobby: </td>
			<td>${student.hobby}</td>
		</tr>
		
		<tr>
			<td>Student Mobile: </td>
			<td>${student.mobile}</td>
		</tr>
		<tr>
			<td>Student Skills: </td>
			<td>${student.skills}</td>
		</tr>
		
	
	</table>

</body>
</html>