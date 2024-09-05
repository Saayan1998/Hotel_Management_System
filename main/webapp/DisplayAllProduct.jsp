<%@page import="com.jsp.hotelmanagementsystem.entities.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Display All Product</title>
<style>
	* {
		background-color: black;
	}
	table {
		color: White;
		width: 1000px;
		text-align: center;
		padding: 5px;
		background-color: grey;
		align-content: center;
	}
	a {
		color: Black;
		font-size: 20px;
		background-color: Yellow;
		padding: 10px;
	}
	th {
		color: Yellow;
	}
	.cellPadding {
    margin-left: auto;
    margin-right: auto;
	}
	.cellPadding th, .cellPadding td {
    padding: 20px; 
    border: 1px solid black;
	}
	
	td>a{
		background-color: black;
		color: Red;
	}
</style>
</head>
<body>
<h2>${message}</h2>
	<% List<Product> products = (List) request.getAttribute("products"); %>
	<table class="cellPadding">
		<th> ID </th>
		<th> Name </th>
		<th> Type </th>
		<th> Cost </th>
		<th> Discount </th>
		<th> Update </th>
		<th> Delete </th>
		<% for (Product p : products) { %>
		<tr>
			<td> <%= p.getId() %> </td>
			<td> <%= p.getName() %> </td>
			<td> <%= p.getType() %> </td>
			<td> <%= p.getCost() %> </td>
			<td> <%= p.getDiscount() %> </td>
			<td> <a href= "updateproduct?id=<%=p.getId()%>"> Update </td>
			<td> <a href= "deleteproduct?id<%=p.getId()%>"> Delete </td>
		</tr>
		<% } %>
	</table> 
	<a href ="HotelOption.jsp" > Back to Main Menu </a> <br> <br> <br>
	<a href ="hotellogout" > Logout </a>
</body>
</html>