<%@page import="bo.gioHangBo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="been.sachbean"%>
<%@page import="bo.sachBo"%>
<%@page import="been.loaibean"%>
<%@page import="bo.loaiBo"%>
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
		      <a class="navbar-brand" href="Sach">Java Nâng Cao</a>
		    </div>
		    <ul class="nav navbar-nav">
		      <li class="active"><a href="Sach">Trang Chủ</a></li>
		      <li>
		      	<a href="Sach/GioHang">
		      		Giỏ Hàng<%
		      		if (request.getAttribute("sizeGioHang") != null){
		      			int size = (int) request.getAttribute("sizeGioHang");
		      	%>
		      	
		      		<span style="color: red;">(<%=size %>)</span>
		      	<%		
		      		}
		      	%>
		      	</a>
		      </li>
		      <li><a href="thanhtoan.jsp">Thanh Toán</a></li>
		      <li><a href="lichSu.jsp">Lịch Sử Mua Hàng</a></li>
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
	      			<li><a href="Sach/Login"><span class="glyphicon glyphicon-log-in"></span>Đăng Nhập</a></li>
	      		<%	} %>
		    </ul>
		  </div>
	</nav>
 	
 	<div class="container-fuild">
	 	<div class="row">
			<div class="col-md-3">
				<div class="container">
					<%
						ArrayList<loaibean> dsLoai = (ArrayList<loaibean>) request.getAttribute("dsLoai");
						for(loaibean loai: dsLoai){
					%>
						<div class="row">
							<a href="Sach?ml=<%=loai.getMaloai()%>">
								<%=loai.getTenloai()%>
							</a>
						</div>
					<%		
						}
					%>
				</div>
			</div>
			<div class="col-md-6">
				<div class="row">
					<div>
						<%
							ArrayList<sachbean> dsSach = (ArrayList<sachbean>) request.getAttribute("dsSach");
							for(sachbean sach: dsSach){
						%>
								<div class="col-xs-12 col-sm-6 col-md-4">
									<div class="d-flex flex-column text-center border height100">
					            	<div>
					                	<img src="<%=sach.getAnh()%>" style="width: 200px; height: 200px;"/>
					                </div><br>
					                <a href="Sach/GioHang?masach=<%=sach.getMaSach()%>&tensach=<%=sach.getTenSach()%>&gia=<%=sach.getGia()%>&anh=<%=sach.getAnh()%>&soluongmua=1"><img alt="button mua sách" src="mua.jpg"></a>
					                <p style="font-size: 20px;"> <b><%=sach.getTenSach()%></b> </p>
					                <p>Tác giả: <%=sach.getTacGia()%></p>
					                <p>Giá bán: <%=sach.getGia()%></p> <br>
					           	</div>
								</div>
							<%
								}
							%>
					</div>
				</div>
				
				
					
			</div>
			<div class="col-md-3">
				<form action="Sach" method="post">
					<input type="text" name="txttk" class="form-control" placeholder="nhập key cần tìm"> <br>
					<input type="submit" name="but1" class="btn btn-primary" value="Search"> <br>
				</form>
			</div>
	 	</div>
 	</div>

</body>
</html>