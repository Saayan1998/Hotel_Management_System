<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Product Form</title>
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
		#reg-form{
			background: linear-gradient(45deg,Orange,green,Blue);
			width: 300px;
			margin: 50px auto;
			padding: 20px;
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
	<header> <h1>Add The Product</h1> </header>
	<div id="reg-form">
		<form action="saveproduct" modelAttribute="productObj">
		<div class="form-group"> Product Name : <input type ="text" name="name"> </div>
			<div class="form-group"> Product Type : <input type ="text" name="type"> </div>
			<div class="form-group"> Product Price : <input type ="number" name="cost"> </div>
			<div class="form-group"> Product Discount : <input type ="number" name="discount"> </div>
			<div class="form-group"> <input type="submit"> </div>
		</form>
	</div>
</body>
</html>