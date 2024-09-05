<%@page import="com.jsp.hotelmanagementsystem.entities.Item"%>
<%@page import="com.jsp.hotelmanagementsystem.entities.FoodOrder"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Bill</title>
</head>
<body>
<h2>${message}</h2>
	<% FoodOrder foodOrders = (FoodOrder) request.getAttribute("foodOrderInfo"); 
	if (foodOrders != null){
	%>
	<table cellPadding="20px" border="1">
		<tr>
			<td> Name : <%= foodOrders.getName() %> </td>
			<td> Ph.Number : <%= foodOrders.getMobileNumber() %> </td>
			<td> Items : 
				<ul><% for (Item item : foodOrders.getItems()) { %>
					<li><%= foodOrders.getName() %> </li>
					<% } %>
				</ul>
			</td>
			<td> Total Cost : <%= foodOrders.getTotalPrice() %> </td>
			<td> Address : <%= foodOrders.getAddress() %> </td>
		</tr>
		<% } else { %>
		<p> No Food Orders found </p>
	<% } %>
	</table>
</body>
</html>