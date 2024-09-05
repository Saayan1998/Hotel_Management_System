<%@page import="com.jsp.hotelmanagementsystem.entities.Hotel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Not Approved Hotels</title>
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
	}
	a {
		color: red;
		font-size: 20px;
	}
	th {
		color: Yellow;
	}
</style>
</head>
<body>
	<% List<Hotel> hotels = (List<Hotel>) request.getAttribute("notapprovedhotels"); %>
	<table cellPadding="20px" border="1">
		<th> ID </th>
		<th> Name </th>
		<th> Email </th>
		<th> Ph.Number </th>
		<th> Address </th>
		<th> Password </th>
		<th> Status</th>
		<th> Approve </th>
		<% for (Hotel h : hotels) { %>
		<tr>
			<td> <%= h.getId() %> </td>
			<td> <%= h.getName() %> </td>
			<td> <%= h.getEmail() %> </td>
			<td> <%= h.getMobilenumber() %> </td>
			<td> <%= h.getAddress() %> </td>
			<td> <%= h.getPassword() %> </td>
			<td> <%= h.getStatus() %> </td>
			<td> <a href="approvehotels?id= <%= h.getId() %>"> Approved </a></td>
		</tr>
		<% } %>
	</table>
	<a href ="AdminOption.jsp"> Back to Main Menu </a> <br>  
	<a href ="adminlogout" > Logout </a>
</body>
</html>