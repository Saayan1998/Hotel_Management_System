<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Food Order Form</title>
<style>
		* {
			margin: 10px;
		}
		body{
			background-color : black;
			background-size: cover;
			text-align: center;
		}
		header{
			color: White;
			padding: 10px;
		}
		form{
			background: linear-gradient(45deg,Orange,green,Blue);
			width: 220px;
			margin: 20px auto;
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
			background: Black;
			color: White;
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
	<header> <h1> Customer Details </h1> </header>
		
	<form:form action="savefoodorder" modelAttribute="foodOrderObj">
        Name     	<form:input path="name" />
        Ph.Number   <form:input path="mobileNumber" />
        Address     <form:input path="address" />
        <input type="submit">
	</form:form>
</body>
</html>