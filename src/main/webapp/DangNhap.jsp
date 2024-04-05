<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Đăng Nhập</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<form style="padding: 100px;" action="Login" method="post">
		<h3><b>Đăng Nhập</b></h3><br>
		User: 
		<input name="un" type="text" placeholder="Tài khoản"> <br>
		Pass:
		<input name="pass" type="password" placeholder="Mật khẩu"> <br>
		<input type="submit" name="but1" value="Login">
	</form>
	
	<%
		if (request.getAttribute("errol") != null) {
	%>	
			<h1><%=request.getAttribute("errol") %></h1> 
	<%
		} 
	%>
</body>
</html>