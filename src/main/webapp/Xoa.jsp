<%@page import="java.net.URLDecoder"%>
<%@page import="Tam.CGioHang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;
charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		CGioHang g = (CGioHang)session.getAttribute("gh");
		if(g != null){
			request.setCharacterEncoding("utf-8");
			String th1 = request.getParameter("th"), th;
			if (th1 != null){
				th = URLDecoder.decode(th1, "UTF-8");
			}
			else th = null;
			System.out.println(th1 + "--sua--" + th);
			g.Xoa(th);
			System.out.println(th1 + "-xoa--" + th);
			session.setAttribute("gh", g);
			response.sendRedirect("DatHang.jsp");
		}
	%>
</body>
</html>