<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		String b = (String) request.getAttribute("b");
		long a = (long) request.getAttribute("a");
		String[] ds = (String[]) request.getAttribute("ds");
		for(int i=0; i<a; i++ ){%>
			<marquee direction="right"> <%=i+1%>. <%=b %> Hồ Minh Thuận <br> </marquee>
			<p>Họ và tên</p>
	<%	
		}
		for(String t: ds){
	%>
			<marquee direction="right">Hello <%=t%><br> </marquee>
	<%
		}
	%>
</body>
</html>