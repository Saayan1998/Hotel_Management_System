<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Option</title>
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
		}
		header {
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

<% Integer customerId = (Integer) session.getAttribute("customerInfo"); 
 	if (customerId != null) {
%>
	<header>
		<h1>Customer Order Page</h1>
		<div id="navbar">
			<a href="ReadHotelName.jsp">View Item By Hotel</a>
			<a href="fetchallproducts">Buy Products</a>
			<a href="ReadPriceRange.jsp">View Products Between Price Range</a>
		</div>
		
	<% } else { %>
	
	<h1> <a href = "CustomerLogin.jsp"> Login First </a></h1>
	</header>
	<% } %>
</body>
</html>