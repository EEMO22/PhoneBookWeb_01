<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록</title>

<style>
	form {
		width: 250px;
		height: 200px;
		border: 1px solid;
		border-radius: 10px;
		padding: 10px;
	}
	
	#btn {
		margin: auto;
		display: block;
	}

</style>
</head>
<body>
	<h3>주소록 Servlet</h3>
	<h4>새 주소 등록</h4>
	
	<form action="<%= request.getContextPath() %>/ps" method="POST"
	width: 300px; height: 250px; border: 1px solid>
		<input type="hidden" value="add" name="a" />
		<label for="name">이름</label><br />
		<input type="text" name="name" id="name" /><br />
		<label for="hp">휴대전화</label><br />
		<input type="text" name="hp" id="hp"><br />
		<label for="tel">집전화</label><br />
		<input type="text" name="tel" id="tel" /><br />
		
		<br />
		
		<input type="submit" value="주소 등록" id="btn" />
	</form>
	
	<p><a href="<%= request.getContextPath() %>/ps">목록 보기</a>

</body>
</html>