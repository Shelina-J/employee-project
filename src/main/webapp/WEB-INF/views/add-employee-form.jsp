<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add employee form</title>
<%-- <link href="<c:url value="/resources/index.css" />" rel="stylesheet"> --%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
<script type="text/javascript">
	function calculateAge() {
		let date= document.getElementById("dob").value;
		var dob= new Date(date); 
		var today = new Date(); 
		var Age=today.getTime()-dob.getTime(); 
		Age=Math.floor(Age/(1000*60*60*24*365.25)); 
		
		if(Age>22){
			document.getElementById("age").value=Age; 
		}else{
			document.getElementsByTagName("span").innerText="You are not eligible";
		}
	}
</script>
</head>
<body>
	<jsp:include page="home.jsp"></jsp:include>
	<!-- <div class="container">
		<form action="add-employee" method="POST">
			<label>Employee Name</label>
			<input type="text" required name="name">
			<br><br>
			
			<label>Employee Email</label>
			<input type="text" required name="emailId">
			<br><br>
			
			<label>Employee Date of Birth</label>
			<input type="date" required name="dob" id="dob">
			<br><br>
			
			<label>Age</label>
			<input type="number" readonly name="age" id="age" onmouseover="calculateAge()">
			<span></span>
			<br><br>
			
			<label>Salary</label>
			<input type="text" required name="salary" id="salary">
			<br><br>
			
			<label>Status Type</label>
			<label for="active">Active</label><input type="radio" name="type" value="Active" id="active">
			
			<label>Status Type</label>
			<label for="inactive">Inactive</label><input type="radio" name="type" value="Inactive" id="inactive">
			
			<input type="submit" value="ADD EMPLOYEE">
			
		</form>
	</div>  -->
	
	
	<div class="mb-3">
	<form action="add-employee" method="POST">	
 		 <label for="exampleFormControlInput1" class="form-label">Employee Name</label>
		  <input type="text" class="form-control" id="exampleFormControlInput1" required name="name">
		  <br><br>
		  <label for="exampleFormControlInput1" class="form-label">Employee Email</label>
		  <input type="email" class="form-control" id="exampleFormControlInput1" required name="emailId">
		  <br><br>
		  <label for="exampleFormControlInput1" class="form-label">Date of Birth</label>
		  <input type="date" class="form-control"  required name="dob" id="dob">
		  <br><br>
		  <label for="exampleFormControlInput1" class="form-label">Age</label>
		  <input type="number" class="form-control" readonly name="age" id="age" onmouseover="calculateAge()">
		  <br><br>
		  
		  <label for="exampleFormControlInput1" class="form-label">Salary</label>
		  <input type="text" class="form-control" id="exampleFormControlInput1" required name="salary" id="salary">
		  <br><br>
		</div>
		
		<div class="form-check">
			  <input class="form-check-input" type="radio" name="type" id="flexRadioDefault1" value="Active">
			  <label class="form-check-label" for="flexRadioDefault1">
			    Active
			  </label>
			</div>
			<div class="form-check">
			  <input class="form-check-input" type="radio" name="type" id="flexRadioDefault2" value="Inactive">
			  <label class="form-check-label" for="flexRadioDefault2">
			    Inactive
			  </label>
			
		<div class="col-12">
   		 <button type="submit" class="btn btn-primary">Submit</button>
  			</div>
	</form>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous">
	
</body>
</html>