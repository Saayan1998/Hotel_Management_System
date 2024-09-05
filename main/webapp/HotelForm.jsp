<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hotel Form</title>
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
			padding: 5px;
		}
		#reg-form{
			background: linear-gradient(45deg,Orange,green,Brown);
			width: 300px;
			margin: 50px auto;
			padding: 10px;
			text-align: center;
			border-radius: 20px;
			border-right: 3px solid white;
			border-left: 3px solid white;		
		}
		.form-group>input[type="text"],.form-group>input[type="password"]
		{	
			border-bottom: 1px solid white;
			margin-bottom: 20px;
		}
		
		.form-group
		{
			
			margin-bottom: 20px;
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
<header> <h1>Hotel Registration Form</h1> </header>
	<div id="reg-form">
		<form action="savehotel" modelAttribute="hotelObj">
		<div class="form-group"> Enter Name <input type ="text" name="name"> </div>
			<div class="form-group"> Enter Email <input type ="text" name="email"> </div>
			<div class="form-group"> Enter Ph.Number <input type ="number" name="mobilenumber"> </div>
			<div class="form-group"> Enter Address <input type ="text" name="address"> </div>
			<div class="form-group"> Enter Password <input type ="password" name="password"> </div>
			<div class="form-group"> <input type="submit"> </div>
		</form>
	</div>
</body>
</html>