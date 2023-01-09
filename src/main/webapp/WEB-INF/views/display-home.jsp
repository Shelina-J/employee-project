<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Train</title>
<%-- <link href="<c:url value="/resources/index.css" />" rel="stylesheet"> --%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
</head>
<body>
	
		<c:choose>
		<c:when test="${msg.getClass().getSimpleName().equals(\"String\") }">
			<h1>${msg }</h1>
		</c:when>
		<c:when test="${ msg.getClass().getSimpleName().equals(\"EmployeeDto\") }">
			<%-- <table border="2" align="center">
				<tr>
					<th>Employee Id</th>
					<th>Employee Name</th>
					<th>Employee DOB</th>
					<th>Employee Age</th>
					<th>Employee EmailId</th>
					<th>Employee Salary</th>
					<th>Employee Status</th>
				</tr>
				
				<tr>
					<td>${msg.id }</td>
					<td>${msg.name }</td>
					<td>${msg.age }</td>
					<td>${msg.dob }</td>
					<td>${msg.emailId }</td>
					<td>${msg.salary }</td>
					<td>${msg.type }</td>
					
				</tr>
			</table> --%>
			
			<table class="table table-hover">
        <tr>
            <th>Employee Id</th>
            <th>Employee Name</th>
            <th>Employee DOB</th>
            <th>Employee Age</th>
            <th>Employee EmailId</th>
            <th>Employee Salary</th>
            <th>Employee Status</th>
        </tr>
        <tbody class="table-hover">
            <tr>
                <td>${msg.id }</td>
                <td>${msg.name }</td>
                <td>${msg.age }</td>
                <td>${msg.dob }</td>
                <td>${msg.emailId }</td>
                <td>${msg.salary }</td>
                <td>${msg.type }</td>
                
            </tr> 
        </tbody>
      </table>
		</c:when>				
	</c:choose>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous">
	
</body>
</html>