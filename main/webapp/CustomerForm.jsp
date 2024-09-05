<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Form</title>
	<style>
		* {
			margin: 10px;
		}
		body{
			background-color: black;
			background-size: cover;
			text-align: center;
		}
		header{
			color: White;
			padding: 10px;
		}
		form{
			background: linear-gradient(45deg,Orange,green,Brown);
			width: 250px;
			margin: 50px auto;
			padding: 20px;
			text-align: center;
			border-radius: 20px;
			border-right: 3px solid white;
			border-left: 3px solid white;		
		}
		::placeholder{
			color: white;
		}
		input[type="submit"]{
			background: white;
			border: none;
			outline: none;
			width: 100px;
		}
		input[type="submit"]:hover{
			box-shadow:0 0 10px white;
			cursor: pointer;
		}
	</style>	
</head>
<body>
	<header> <h1>Customer Registration Form</h1> </header>
	<form:form action="savecustomer" modelAttribute="customerObj">
     Customer Name		 <form:input path="name"/> <br>
     Customer Email		 <form:input path="email"/> <br>
     Customer Password	 <form:input path="password"/> <br>
     Customer Ph.Number	 <form:input path="mobileNumber"/> <br>
     Customer Address	 <form:input path="address"/> <br>
     <input type="submit" value="Register">
    </form:form>
</body>
</html>