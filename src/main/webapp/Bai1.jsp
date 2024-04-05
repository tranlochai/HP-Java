<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bài 1</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
</head>
<body>

	<br>
	<div class="container-fluid" style=" height: 365px; width: 310px; box-shadow: 0px 2px 8px #81c8f3;float: left;margin-left: 10px;">
		
		<h3 style="padding-top:20px; color: #006eb7; font-size: 25px"> SINH VIÊN</h3>
	
		<form method="post" action="#">
			<div class="form-group">
				<label style="font-size: 12px">
					<b>Mã sinh viên:</b>
				</label>
				<input type="text" name="masinhvien" class="form-control" placeholder="Mã sinh viên">
				<label style="font-size: 12px">
					<b>Mật Khẩu:</b>
				</label>
				<input type="password" name="t1" class="form-control" placeholder="Mật khẩu"> <br>
				<button type="submit" class="btn btn-primary container-fluid">Đăng Nhập</button>
			</div>
			
		</form>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	
</body>
</html>