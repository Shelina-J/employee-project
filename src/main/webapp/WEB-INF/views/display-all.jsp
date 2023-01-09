<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display All Employees</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
</head>
<body>
	<jsp:include page="home.jsp"/>
	<%-- <table border='2' align='center'>
		<tr>
				<th>Employee Number</th>
				<th>Employee Name</th>
				<th>Employee dob</th>
				<th>Employee emailid</th>
				<th>Employee Salary</th>
				<th>Type</th>
				<th colspan='2'>Actions</th>
		</tr>
		<c:forEach var="employee" items="${employees }">
			<tr>
					<td>${employee.id }</td>
					<td>${employee.name }</td>
					<td>${employee.dob }</td>
					<td>${employee.emailId }</td>
					<td>${employee.salary }</td>
					<td>${employee.type }</td>
					<td><a href="./edit?id=${employee.id }">Edit </a></td>
					<td><a href="./delete?id=${employee.id }">Delete </a></td>
			</tr>	
		</c:forEach>			
	</table> --%>
	
	<table class="table table-hover">
        <tr>
            <th>Employee Number</th>
				<th>Employee Name</th>
				<th>Employee dob</th>
				<th>Employee emailid</th>
				<th>Employee Salary</th>
				<th>Type</th>
				<th colspan='2'>Actions</th>
        </tr>
        <tbody class="table-hover">
        <c:forEach var="employee" items="${employees }">
            <tr>
                <td>${employee.id }</td>
					<td>${employee.name }</td>
					<td>${employee.dob }</td>
					<td>${employee.emailId }</td>
					<td>${employee.salary }</td>
					<td>${employee.type }</td>
					<td><a href="./edit?id=${employee.id }">Edit </a></td>
					<td><a href="./delete?id=${employee.id }">Delete </a></td>
                
            </tr> 
            </c:forEach>
        </tbody>
      </table>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
	</body>
</html>