<%@page import="com.jsp.hotelmanagementsystem.entities.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<meta charset="UTF-8">
<title>Display Product To Customer</title>
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
<% List<Product> products = (List) request.getAttribute("productsList"); %>
	<table class="cellPadding">
		<th> Name </th>
		<th> Type </th>
		<th> Cost </th>
		<th> Add </th>
		<% for (Product product : products) { %>
		<tr>
			<td> <%= product.getName() %> </td>
			<td> <%= product.getType() %> </td>
			<td> <%= product.getCost() %> </td>
			<td> <a href= "additem?id=<%=product.getId()%>"> Add </a></td>
		</tr>
		<% } %>	
	</table> 	
		<button> <a href="ViewAddedItemsToCustomer.jsp"> Proceed To Buy </a></button>
</body>
</html>