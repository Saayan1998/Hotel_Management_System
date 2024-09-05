<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hotel Home</title>
	<style>
		* {
			margin: 10px;
		}
		body {
			background-color: black;
			background-size: cover;
			text-align: center;
		}
		header {
			color: White;
			padding: 10px;
		}
		#reg-form {
			background: linear-gradient(45deg,Orange,green,Brown);
			width: 200px;
			margin: 50px auto;
			padding: 20px;
			text-align: center;
			border-radius: 20px;
			border-right: 3px solid white;
			border-left: 3px solid white;	
		}
		
		::placeholder {
			color: white;
		}
		#icon {
			margin-top:10px;
		}
		.fa-solid {
			background: black;
			color: grey;
			font-size: 60px;
			margin-bottom: 40px;
			border-radius: 15px;
			border: 8px solid white;
		}
		form {
			font-size: 20px;
			color: white;
		}
		h2 {
			font-size: 18px;
			padding : 20px;
		}	
	</style>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />	
</head>
<body>
<h2>${message}</h2>
	<header> <h1>Hotel Home Page </h1> </header>	
	<div id="reg-form">
		<div id="icon"> <i class="fa-solid fa-user-large"></i> </div>
		<form>
			<div class="form-group"> <a href = "addhotel"> Register </a> </div>
			<div class="form-group"> <a href = "HotelLogin.jsp"> Login </a> </div>
		</form>
	</div>	
</body>
</html>