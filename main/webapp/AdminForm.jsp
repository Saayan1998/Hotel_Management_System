<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Form</title>
	<style>
		*{
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
		#reg-form{
			background: linear-gradient(25deg,Blue,green,Red);
			width: 300px;
			margin: 50px auto;
			padding: 20px;
			text-align: center;
			border-radius: 20px;
			border-right: 3px solid white;
			border-left: 3px solid white;
			
		}
		
		.form-group{	
			margin-bottom: 20px;
			font-size: 20px;
		}
		::placeholder{
			color: white;
		}
		input[type="submit"]{
			background: White;
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
<header> <h1>Registration Form</h1> </header>
	<div id="reg-form">
		<form action="saveadmin" modelAttribute="adminObj">
			<div class="form-group"> Enter Name <input type ="text" name="name"> </div>
			<div class="form-group"> Enter Email <input type ="text" name="email"> </div>
			<div class="form-group"> Enter Password <input type ="password" name="password"> </div>
			<div class="form-group"> <input type="submit"> </div>
		</form>
	</div>
</body>
</html>