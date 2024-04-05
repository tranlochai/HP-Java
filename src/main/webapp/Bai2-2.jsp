<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Bài 2 Buổi 2</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<form action="Bai2-2.jsp" method="post">
		<div>
			<label > Nhập hệ số cần hiện bảng cửu chương = </label>
			<input style="width: 50px" name="heSo" type="number" value="<%=request.getParameter("heSo") != null ? request.getParameter("heSo"):0%>">
			<input style="background: white;font-size: 11px;" type="submit" name="button" value="Check">
		</div>
	</form>
	<%
		if (request.getParameter("heSo") != null) {
			String text = request.getParameter("heSo");
			int i = Integer.parseInt(text);
			%>
			<div style="text-align:  center;">
				<div>
					<b>Bảng cửu chương <%=i%> </b> <br> <br>
						<%
							for(int j = 1 ; j < 11; j++){%>
								<h5 style="margin: 0px;"> <%=i%>   x   <%=j%>   =   <%=i * j %> </h5> <br> <%
							}
						%>
				</div>
				
			</div>
	<%} %>
</body>
</html>