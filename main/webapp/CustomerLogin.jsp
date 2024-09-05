<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Login</title>
<style>
		* {
			margin: 10px;
		}
		body {
			background-color: Black;
			background-size: cover;
			text-align: center;
		}
		header {
			color: White;
			padding: 10px;
		}
		#reg-form {
			background: linear-gradient(35deg,Red,Orange,blue);
			width: 300px;
			margin: 50px auto;
			padding: 20px;
			text-align: center;
			border-radius: 20px;
			border-right: 3px solid white;
			border-left: 3px solid white;
			
		}
		.form-group>input[type="text"],.form-group>input[type="password"]{		
			border-bottom: 1px solid white;
			margin-bottom: 20px;
		}
		.form-group{	
			margin-bottom: 20px;
			font-size: 20px;
		}
		::placeholder {
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
<header> <h1>Customer Login Form</h1> </header>
	<div id="reg-form">
		<h3> ${message} </h3>
		<form action="customerloginvalidation">
			<div class="form-group"> Customer email <input type ="text" name="email"> </div>
			<div class="form-group"> Customer password <input type ="password" name="password"> </div>
			<div class="form-group"> <input type="submit" value="login"> </div>
		</form>
	</div>	
</body>
</html>