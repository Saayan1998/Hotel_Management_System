<%@page import="com.jsp.hotelmanagementsystem.entities.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Option</title>
	<style>
		* {
			margin:0px;
			padding:5px;
			background-color: black;
			color : white;
		}
		div {
			color: white;
			margin:15px;
			text-decoration:none;
			text-align: right;
		}
		header {
			background-color:black;
			height:70px;
			display:flex;
			flex-direction:row;
			align-items:center;
			justify-content:space-between;
		}
		header>h1 {
			color:orange;
			margin:15px;
		}
		header>#navbar>a {
			color:orange;
			text-decoration:none;
			margin:15px;
			font-family:"comic sans ms",sans-serif;
		}
		header>#navbar>a:hover {
			text-decoration:underline;
		}
		@media(min-width:0px) and (max-width:700px) {
		header {
			flex-direction:column;
			height:80px;
		}
		header>#navbar>a {
			position:relative;
			top:-10px;
		}
	}
	</style>
</head>
<body>

<% 
Admin admin = (Admin) session.getAttribute("adminInfo"); 
	if (admin != null){
%>
	<h3>${message}</h3>
	<div> <h2><a href ="adminlogout" > Logout </a></h2> </div>
	<header>
		<h1>Admin Option</h1>
		<div id="navbar">
			<a href="fetchnotapprovedhotels">Approve Hotel</a>
			<a href="fetchunblockedhotels">Block Hotel</a>
			<a href="fetchblockedhotels">Unblock Hotel</a>
			<a href="providediscount">Provide Discount</a>
		</div>
	</header>
	
	<% } else { %>
		<div id="navbar"> <h1><a href = "AdminLogin.jsp">Login First</a></h1> </div>
	
	<% } %>
	
</body>
</html>