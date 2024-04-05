<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Java nâng cao</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<%
		//if(session.getAttribute("user") == null)
			//response.sendRedirect("DangNhap.jsp");
	%>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="">Java Nâng Cao</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="TrangChu.jsp">Trang Chủ</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Trang <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="Example.jsp">Buổi 1</a></li>
          <li><a href="Buoi2.jsp">Buổi 2</a></li>
          <li><a href="Buoi3.jsp">Buổi 3</a></li>
        </ul>
      </li>
      <li><a href="BaiTap.jsp">Bài Tập</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      
      
      		<%
      			if(session.getAttribute("user") != null){ %>
      				<li><a href=""><span class="glyphicon glyphicon-user"></span>Xin Chào <%=session.getAttribute("user")%>!</a></li>
      				<li><a href="dangXuat.jsp"><span class="glyphicon glyphicon-log-in"></span>Đăng Xuất</a></li>
      		<%
      			}
      			else {
      		%>
      			<li><a href="#"><span class="glyphicon glyphicon-user"></span> Đăng Kí</a></li>
      			<li><a href="DangNhap.jsp"><span class="glyphicon glyphicon-log-in"></span>Đăng Nhập</a></li>
      		<%	} %>
      
    </ul>
  </div>
</nav>
  
<div class="container">
  <h3>Right Aligned Navbar</h3>
  <p>The .navbar-right class is used to right-align navigation bar buttons.</p>
</div>

</body>
</html>