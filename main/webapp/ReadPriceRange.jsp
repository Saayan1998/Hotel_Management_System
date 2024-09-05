<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Read Price Range</title>
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
	<header> <h1> View Products Between Price Range </h1> </header>
	<form action="fetchproductsbetweenpricerange">
		Enter Min Price <input type="number" name="minPrice"> <br>
		Enter Max Price <input type="number" name="maxPrice"> <br>
		<input type="submit">
	</form>
</body>
</html>