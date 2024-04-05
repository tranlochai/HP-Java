<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Buổi 3</title>
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
		if (session.getAttribute("ss") == null){
			session.setAttribute("ss", (long) 0);
		}
	
		
		if(request.getParameter("so") != null){
			String txt = request.getParameter("so");
			long n = (long) session.getAttribute("ss");
			n = n + Long.parseLong(txt);
			session.setAttribute("ss", n);
		}
	%>
	<form action="Buoi3.jsp" method="post">
		<input name="so" type="text"> <br>
		<input type="submit" name="b1">
	</form>
	<a href="testSession.jsp">Hiển thị session</a> <br>
	S = <%=session.getAttribute("ss") %>
</body>
</html>