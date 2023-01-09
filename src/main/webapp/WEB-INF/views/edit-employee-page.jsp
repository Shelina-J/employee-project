<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Train</title>
<%-- <link href="<c:url value="/resources/index.css" />" rel="stylesheet"> --%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
<script type="text/javascript">
	function calculateAge() {
		let date= document.getElementById("dob").value;
		var dob= new Date(date); 
		var today = new Date(); 
		var Age=today.getTime()-dob.getTime(); 
		Age=Math.floor(Age/(1000*60*60*24*365.25)); 
		document.getElementById("age").value=Age; 
	}
</script>
</head>
<body>
	<jsp:include page="home.jsp"></jsp:include>
	
	<div class="container">
		<form action="update-employee-page" method="POST">
		
			<label>Employee Number</label>
			<input type="number" required name="id" readonly="readonly" value="${emp.id }">
			<br><br>
			<label>Employee Name</label>
			<input type="text" required name="name" value="${emp.name }">
			<br><br>
			
			<label>Employee Email</label>
			<input type="text" required name="emailId" value="${emp.emailId }">
			<br><br>
			
			<label>Employee Date of Birth</label>
			<input type="date" required name="dob" id="dob" value="${emp.dob }">
			<br><br>
			
			<label>Age</label>
			<input type="number" readonly name="age" id="age" onmouseover="calculateAge()" value="${emp.age }">
			<br><br>
			
			<label>Salary</label>
			<input type="text" required name="salary" id="salary" value="${emp.salary }">
			<br><br>
			
			<label>Status Type</label>
			<c:choose>
				<c:when test="${emp.type.equals(\"Active\")}">
					<label for="active">Active</label><input type="radio" name="type" value="Active" id="active" checked='checked'>
					<label for="inactive">Inactive</label><input type="radio" name="type" value="Inactive" id="inactive">
				</c:when>
				<c:when test="${emp.type.equals(\"Inactive\")}">
					<label for="active">Active</label><input type="radio" name="type" value="Active" id="active" >
					<label for="inactive">Inactive</label><input type="radio" name="type" value="Inactive" id="inactive" checked='checked'>
				</c:when>
				
			</c:choose>
			
			
			<input type="submit" value="UPDATE EMPLOYEE"><label></label>
	</form>
	</div> 
	
	<%-- <form action="update-employee-page" method="POST">	
		<div class="mb-3">
 		 <label for="exampleFormControlInput1" class="form-label">Employee Number</label>
		  <input type="number" class="form-control" id="exampleFormControlInput1" required name="id" value="${emp.id }" readonly='readonly'>
		  <br><br>
		  
		  <label for="exampleFormControlInput1" class="form-label">Employee Name</label>
		  <input type="text" class="form-control" id="exampleFormControlInput1" required name="name" value="${emp.name }">
		  
		  <label for="exampleFormControlInput1" class="form-label">Employee Email</label>
		  <input type="email" class="form-control" id="exampleFormControlInput1" required name="emailId" value="${emp.emailId }">
		  <br><br>
		  <label for="exampleFormControlInput1" class="form-label">Date of Birth</label>
		  <input type="date" class="form-control"  required name="dob" id="dob" value="${emp.dob }" >
		  <br><br>
		  <label for="exampleFormControlInput1" class="form-label">Age</label>
		  <input type="number" class="form-control" readonly name="age" id="age" onmouseover="calculateAge()" value="${emp.age }">
		  <br><br>
		  
		  <label for="exampleFormControlInput1" class="form-label">Salary</label>
		  <input type="text" class="form-control" id="exampleFormControlInput1" required name="salary" id="salary" value="${emp.salary }">
		  <br><br>
		</div>
		
		<c:choose>
				<c:when test="${emp.type.equals(\"Active\")}">
			  		<input class="form-check-input" type="radio" name="type" id="flexRadioDefault1" value="Active" checked='checked'>
					  <label class="form-check-label" for="flexRadioDefault1">
					    Active
					  </label>
					  <input class="form-check-input" type="radio" name="type" id="flexRadioDefault2" value="Inactive">
					  <label class="form-check-label" for="flexRadioDefault2">
					    Inactive
					  </label>
			  </c:when>
			
				<c:when test="${emp.type.equals(\"Inactive\")}">
			  		<input class="form-check-input" type="radio" name="type" id="flexRadioDefault1" value="Active" checked='checked'>
					  <label class="form-check-label" for="flexRadioDefault1">
					    Active
					  </label>
					  <input class="form-check-input" type="radio" name="type" id="flexRadioDefault2" value="Inactive">
					  <label class="form-check-label" for="flexRadioDefault2">
					    Inactive
					  </label>
			  </c:when>
		</c:choose>
			
		<div class="col-12">
   			 <button type="submit" class="btn btn-primary">UPDATE EMPLOYEE</button>
  		</div>
	</form>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script> --%>
</body>
</html>