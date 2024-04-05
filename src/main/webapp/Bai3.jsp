<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bài 3</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
</head>
<body>

	<br>
	<div class="container-fluid" style=" height: 500px; width: 500px; box-shadow: 0px 2px 8px black;float: left;margin-left: 10px;">
		<div style="width: 100%;">
			<h5 style="padding-top:10px; color: #006eb7; border-bottom: 3px solid black; color: black;"> <b>Thư mới</b></h5>
		</div>
		
	
		<form method="post" action="#">
			<div class="form-group">
				<input style="padding-top:10px;border: none; border-bottom: 0.5px solid black; font-size: 12px;border-radius:0;" type="email" name="nguoinhan" class="form-control" placeholder="Người nhận">
				<input style="padding-top:10px;border: none; border-bottom: 0.5px solid black; font-size: 12px; border-radius:0;" type="text" name="tieude" class="form-control" placeholder="Tiêu đề">
				 <textarea style="padding-top:10px;margin-top: 10px;border: none;border-bottom: 1px solid black;height: 300px;border-radius:0;" id="myTextarea2" class="form-control" rows="3"></textarea>
				<button style="padding-top:10px;margin-top: 10px;width: 100px;-webkit-border-radius: 60px;-moz-border-radius: 60px;border-radius: 60px;" type="submit" class="btn btn-primary">Gửi</button>
			</div>
			
		</form>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	
</body>
</html>