<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link href="<c:url value="/resources/index.css" />" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
</head>
<body>
	<!-- <div class="container"> 
		<ol>
			<li><a href="./insert">Add employee</a></li>
			<li><a href="./view-all">List of Employee</a></li>
		</ol>
	</div> -->
	
	<ul class="nav justify-content-center">
  		<li class="nav-item">
    		<a class="nav-link active" aria-current="page" href="./insert">Add employee</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="./view-all">List of Employee</a>
		  </li>
	</ul>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>