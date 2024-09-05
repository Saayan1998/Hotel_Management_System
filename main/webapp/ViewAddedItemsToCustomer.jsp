<%@page import="com.jsp.hotelmanagementsystem.entities.Item"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<meta charset="UTF-8">
<title>View Added Item To Customer</title>
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
		color: White;
		font-size: 20px;
		padding: 10px;
	}
	th {
		color: Yellow;
	}
	.cellPadding {
    margin-left: auto;
    margin-right: auto;
    margin-top: 30px;
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
	<header><h1>View Added Item</h1>
	<% List<Item> items = (List<Item>) session.getAttribute("itemsList"); %>
	<table class="cellPadding">
		<th> Name </th>
		<th> Type </th>
		<th> Cost </th>
		<th> Quantity </th>
		<th> Remove </th>
		<% for (Item item : items) { %>
		<tr>
			<td> <%= item.getName() %> </td>
			<td> <%= item.getType() %> </td>
			<td> <%= item.getCost() %> </td>
			<td> <%= item.getQuantity() %> </td>
			<td> <a href= "removeitem?id=<%=item.getId()%>"> Remove </a></td>
		</tr>
		<% } %>
	</table>
			<button><a href="addfoodorder">Confirm</a></button>	
</body>
</html>