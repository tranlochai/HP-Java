<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bài 1 Buổi 2</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	
	<div >
	<%
		for(int i = 1; i < 11; i++){
			%>
			<div style="">
				<b>Bảng cửu chương <%=i%> </b> <br> <br>
				<%
					for(int j = 1 ; j < 11; j++){%>
						<h5> <%=i%>   x   <%=j%>   =   <%=i * j %> </h5><%
					}
				%>
			</div>
	<% 
		}
	
	%>
	</div>
	
	
</body>
</html>