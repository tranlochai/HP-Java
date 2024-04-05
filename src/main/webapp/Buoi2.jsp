<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buổi 2</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	
	<%
		long a = 0,b = 0;
		double kq = 0;
		if(request.getAttribute("kq") != null){
			kq = (double) request.getAttribute("kq");
			String txtA = (String) request.getParameter("a");
			String txtB = (String) request.getParameter("b");
			a = Long.parseLong(txtA);
			b = Long.parseLong(txtB);
		}
	%>
	<form action="kQMayTinh" method="post">
		<div>
			<label > A = </label>
			<input name="a" type="number" value="<%=a%>">
		</div>
		<div>
			<label > B = </label>
			<input name="b" type="number" value="<%=b%>">
		</div>
		<div>
			<label > Kq = </label>
			<input type="number" value="<%=kq%>">
		</div>
		<div style="padding: 10px; margin: 5px;">
			<input style="background: white;font-size: 25px;" type="submit" name="butCong" value="+">
			<input style="background: white;font-size: 25px;" type="submit" name="butTru" value="-">
			<input style="background: white;font-size: 25px;" type="submit" name="butNhan" value="*">
			<input style="background: white;font-size: 25px;" type="submit" name="butChia" value="/">
			
		</div>
		
	</form>
	
</body>
</html>