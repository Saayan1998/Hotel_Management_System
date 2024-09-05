<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html">
<html>
<head>
<meta charset="UTF-8">
<title>Item Form</title>
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
	<header> <h1>Item Form</h1> </header>
	<form:form action="saveitemtoorder" modelAttribute="itemObj">
     Item Name		 <form:input path="name" readonly="true"/> <br>
     Item Type		 <form:input path="type" readonly="true"/> <br>
     Item Cost		 <form:input path="cost" readonly="true"/> <br>
     Item Quantity	 <form:input path="quantity"/> <br>
     <input type="submit">
    </form:form>
</body>
</html>