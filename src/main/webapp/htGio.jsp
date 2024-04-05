<%@page import="java.util.Enumeration"%>
<%@page import="been.gioHangbeen"%>
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
		      <a class="navbar-brand" href="../Sach">Java Nâng Cao</a>
		    </div>
		    <ul class="nav navbar-nav">
		      <li class="active"><a href="../Sach">Trang Chủ</a></li>
		      <li>
			      	<a href="./GioHang">
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
	      			<li><a href="./Login"><span class="glyphicon glyphicon-log-in"></span>Đăng Nhập</a></li>
	      		<%	} %>
		    </ul>
		  </div>
	</nav>
 	
 	<div class="container-fuild">
 		<table style="border: none;" width="1000" class="table table-condensed table-hover table-striped table-bordered">
 			<thead>
 				<tr>
 					<td width="200" valign="top">
 						
 						<table>
 							<%
 								ArrayList<loaibean> dsLoai = (ArrayList<loaibean>) request.getAttribute("dsLoai");
 								for(loaibean loai: dsLoai){
 							%>
 								<tr>
 									<td>
	 									<a href="Sach?ml=<%=loai.getMaloai()%>">
	 										<%=loai.getTenloai()%>
	 									</a>
 									</td>
 								</tr>
 							<%		
 								}
 							%>
 						</table>
 						
 					</td>
 					<td width="600" valign="top">
 							<div style="cursor:pointer;width:auto;border-bottom:#d6d6d6 1px dotted;">	
								<b><h4>GIỎ HÀNG CỦA BẠN</h4></b>
    						</div>
    						
    						<div style="padding-top: 2px; style="cursor:pointer; width:auto; border-bottom:#d6d6d6 1px dotted;">
    							<br>
		 						<%		
									if (request.getAttribute("dsGioHang") != null) {
									%> 
										<form id="form-checkbox-xoa" action="../Sach/GioHang" method="post">
										</form>	
									<%	
										ArrayList<gioHangbeen> dsGioHang = (ArrayList<gioHangbeen>) request.getAttribute("dsGioHang");
			 							for(gioHangbeen hang: dsGioHang){
			 						%>
				 							<table style="padding-top: 1px;">
				 								<tbody>
				 									<tr>
				 										<td valign="middle" width="50px" height="60px">
				 											<input form="form-checkbox-xoa" type="checkbox" name="<%=hang.getMaSach()%>">
				 										</td>
				 										<td valign="middle" width="50px" height="60px">
				 											<h4><b><%=dsGioHang.indexOf(hang) + 1 %></b>.</h4>
				 										</td>
						 								<td valign="top" width="50px" height="60px">
						 									<div style="margin-right: 30px;">
												                	<img src="../<%=hang.getAnh()%>" style="width: 50px;height: 60px;"/>
												            </div>
												        </td>
												        <td valign="top">
												                <span style="color: black;font-size: 15px;"> 
												                	<b><%=hang.getTenSach()%></b> 
												                </span>
												                <br>	
												                <br>
												                	<div>
													                	<b>
													                	Giá :  
													                	<span style="color: #6d2524;">  <%=hang.getGia()%>  </span>
													                	  x </b> 
														                <form id="form-capnhat-<%=hang.getMaSach()%>" action="../Sach/GioHang" method="post" style="display: inline-block;">
														                	<input form="form-capnhat-<%=hang.getMaSach()%>" name="msCapNhat" type="text" style="display: none;" value="<%=hang.getMaSach()%>" maxlength="3">
														                	<input form="form-capnhat-<%=hang.getMaSach()%>" name="sl" type="text" style="width: 25px;" value="<%=hang.getSoLuongMua()%>" maxlength="3">
														                	<input form="form-capnhat-<%=hang.getMaSach()%>" style="background: none;text-decoration: underline;" type="submit" name="btncapnhat" class="btn" value="Cập nhật">
														                </form>
														                <b>|</b>
														                <form id="form-xoa-<%=hang.getMaSach()%>" action="../Sach/GioHang" method="post" style="display: inline-block;">
														                	<input form="form-xoa-<%=hang.getMaSach()%>" name="msTraLai" type="text" style="display: none;" value="<%=hang.getMaSach()%>" maxlength="3">
														                	<input form="form-xoa-<%=hang.getMaSach()%>" style="background: none;text-decoration: underline;" type="submit" name="btntralai" class="btn" value="Trả lại">
													                	</form>
												                	</div>
						 								</td>
						 							</tr>
						 						</tbody>
				 							</table>
			 						<%
			 							}
			 						%>
			 								<div style=" text-align: right; padding-right: 100px;">
				 								<input form="form-checkbox-xoa" name="btnXoaDonHangChon" type="submit" class="btn" value="Xoá Đơn Hàng Chọn">
				 							</div>
			 					<%
									}
			 					%>	
 						</div>
 						
 						<div style="cursor:pointer;width:auto;border-bottom:#d6d6d6 1px dotted;">	
							<br>
    					</div>
    					
    					<div style="cursor:pointer;width:auto;border-bottom:#d6d6d6 1px dotted;">	
							<table class="table">
    						<tbody>
    							<tr>
    								<td>
    									<h4><b>
    										Tổng cộng:
    										<%
    											if (request.getAttribute("tongTien") != null){
    										%> 		<%=request.getAttribute("tongTien") %> 
    										<%	}
    											else {
    										%>
    												<%=0%>
    										<%
    										}%>
    										VNĐ
    									</b></h4>
    								</td>
    							</tr>
    						</tbody> 
    						</table>
    					</div>
    					
    					<div>
    						<table class="table">
    						<tbody>
    							<tr>
    								<td style="display: flex; padding: 10px; float:right;">
    									<form style="text-align: right;padding: 10px;" action="TraLaiAll" method="post">
    										<input type="submit" class="btn" value="Trả Lại Toàn Bộ">
    									</form>
    									<form style="text-align: right;padding: 10px;" action="../Sach">
    										<input type="submit" class="btn" value="Tiếp Tục Mua Hàng">
    									</form>
    									<form style="text-align: right;padding: 10px;" action="ttMuaHang.jsp">
    										<input type="submit" class="btn btn-primary" value="Thanh Toán Mua Hàng">
    									</form>
    								</td>
    							</tr>
    						</tbody> 
    						</table>
    					</div>
 							
 					</td>
 					<!--  <td width="200" valign="top">
 						<form action="htSach.jsp" method="post">
 							<input type="text" name="txttk" class="form-control" placeholder="nhập key cần tìm"> <br>
 							<input type="submit" name="but1" class="btn-primary" value="Search"> <br>
 						</form>
 					</td>-->
 				</tr>
 			</thead>
 		</table>
 	</div>
</body>
</html>