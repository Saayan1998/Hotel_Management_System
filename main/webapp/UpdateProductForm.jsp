<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Productt Form</title>
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
	<header> <h1> Update Product </h1> </header>
		
	<form:form action="updateproductinfo" modelAttribute="existingProductInfo">
       	Product Id       <form:input path="id" readonly="true"/>
        Product Name     <form:input path="name" />
        Product Type     <form:input path="type" />
        Product Cost     <form:input path="cost" />
        Product Discount <form:input path="discount" />
        <input type="submit">
	</form:form>
</body>
</html>