<%@page import="java.util.Enumeration"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="Tam.CGioHang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đặt Hàng</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container" style="border: 50px solid #ccc; margin-top: 20px; margin-bottom: 20px;">
		<form  class="form-horizontal" method='post' action ='DatHang.jsp'>
			<div class="form-group">
				<label class="control-label col-sm-8" for="TenHang" style="text-align: center; font-size: 20px; color: darkmagenta;">Thông tin đặt hàng:</label>
			</div>
			<div class="form-group">
				<label class="col-sm-offset-2 control-label col-sm-2" for="TenHang" style="text-align: left;">Tên Hàng:</label>
				<div class="col-sm-5">
					<input type='text' name='txtth' class="form-control" id="tenHang" placeholder="Nhập tên hàng">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-offset-2 control-label col-sm-2" for="Gia" style="text-align: left;">Giá:</label>
				<div class="col-sm-5">
					<input type='text' name='txtgia' class="form-control" id="gia" placeholder="Nhập giá">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-offset-2 control-label col-sm-2" for="SoLuong" style="text-align: left;">Số Lượng:</label>
				<div class="col-sm-5">
					<input type='text' name='txtsl' class="form-control" id="gia" placeholder="Nhập số lượng">
				</div>
			</div>
			
			 <div class="form-group">
			    <div class="col-sm-offset-6 col-sm-6">
			      <input class="btn btn-default" type='submit' name='un1' value='Đặt Hàng'>
			    </div>
	  		</div>
		</form>
	</div>
	
	Giỏ Hàng
		<%

			request.setCharacterEncoding("utf-8");
			String th = request.getParameter("txtth"), th1 = null;
			/*if (th1 != null){
				th = URLDecoder.decode(th1, "UTF-8");
			}
			else th = null;*/
			System.out.println(th1 + "-1--" + th);
			String gia= request.getParameter("txtgia");
			String sl= request.getParameter("txtsl");
			if( th !=null && gia!=null && sl!=null){
				CGioHang g= new CGioHang();
				//Neu mua hang lan dau
				if(session.getAttribute("gh")==null){
					session.setAttribute("gh", g);//Tao gio
				}
				//Gian session: gh vao bien: g
				g= (CGioHang) session.getAttribute("gh");
				g.toPrint();
				//Them hang vao bien: g
				g.Them(th, Integer.parseInt(gia), Integer.parseInt(sl));
				//Luu bien vao session
				session.setAttribute("gh", g);
				System.out.println(th1 + "-2--" + th);
			}
			
			//Hien thi do trong session: gh
			if(session.getAttribute("gh") != null){
				
				CGioHang g= new CGioHang();
				g=(CGioHang)session.getAttribute("gh");
				g.toPrint();
				int sh=g.ds.size();
		%>
		
		<div class="container">
			<table class="table table-condensed table-hover table-striped table-bordered">
					<thead style="">
						<tr>
							<td>
								Tên Hàng
							</td>
							<td>
								Giá
							</td>
							<td>
								Số Lượng
							</td>
							<td>
								Thành Tiền
							</td>
							<td>
								Chỉnh Sửa / Xoá
							</td>
						</tr>
						
					</thead>
					
					
					<%
						for(int i=0;i<sh;i++){ %>
					<tr>
						<td>
							<%=g.ds.get(i).getTenhang()%>
						</td>
						<td>
							<%=g.ds.get(i).getGia() %>
						</td>
						<td>
							<%=g.ds.get(i).getSoluong() %>
							<div>
								<form method='post' action='Sua.jsp?th=<%=g.ds.get(i).getTenhang()%>'>
									<input style="width: 50px" type="number" name='txtsua'>
									<input type='submit' name='tt' value='Sua'>
								</form>
							</div>
							
						</td>
						<td>
							<%=g.ds.get(i).getThanhtien()%>
						</td>
						<td>
							<form  method='post' action='Xoa.jsp?th=<%=g.ds.get(i).getTenhang()%>'>
								<input type="checkbox" name='txtXoa'>
								<input type='submit' name='xx' value='Xoa'>
							</form>
						</td>
					</tr>
					<%}%>
				</table>
		</div>
			
			<div align='right'>
				<form method='post' action='Xoa.jsp?th=all'>
					<input type='submit' name='xx' value='Xoá Tất Cả'>
					Tong tien: <%=g.Tongtien() %>
				</form>
				
			</div>
			<%}%>
			
			
	<form action="DatHang.jsp" method="post">
	   <%for(int i=1;i<4;i++){ %>
	   <input type="text" name="tendk<%=i %>">       <%} %>
	 	<input type='submit' name='th' value='tinh'>
	</form>
	
	<% 
   	Enumeration<String> d= request.getParameterNames();
   	while(d.hasMoreElements())
     	out.println( d.nextElement());
 	%>
 
</body>
</html>