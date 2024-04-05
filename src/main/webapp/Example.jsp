<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ExampleWeb</title>
</head>
<body>

	<table border="1">
		<tr>
			<th> 
				<a href="Page1.jsp">Trang 1</a> <br> 
			</th>
			<th> 	
				<a href="http://localhost:8080/CafeWeb/home"> Trang bán Cafe</a> <br>
			</th>
			<th> 
				<a href="Hướng dẫn lập kế hoạch dự án đơn giản bằng Microsoft Project.docx"> download </a> <br> 
			</th> 	
		</tr>
		
	</table>
	
	
	<form method="post" action="Page1.jsp">
		Un: <input type="text" name="t1"> <br>
		Pass: <input type="password" name="t1"> <br>
		Email: <input type="email" name="t1"> <br>
		Ngày Sinh: <input type="date" name="t1"> <br>
		Up file: <input type="file" name="t1"> <br>
		Chọn quốc gia: 
			<select name="s1">
				<option value="1"> Việt Nam </option>
				<option value="2" selected="selected"> Lào </option>
				<option value="3"> Campuchia </option>
			</select>
		<input type="submit" value="Login"> <br>
	</form>
	
	
	<a href="BaiTapBuoi1.jsp">
		<b><h1>Bài Tập Buổi 1</h1></b>
	</a>
</body>
</html>