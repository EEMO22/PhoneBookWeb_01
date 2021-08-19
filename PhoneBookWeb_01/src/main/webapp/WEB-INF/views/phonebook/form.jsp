<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
<jsp:include page="/WEB-INF/views/includes/header.jsp">
	<jsp:param value="새 주소 등록" name="message"/></jsp:include>
	
	<form action="<%= request.getContextPath() %>/ps" method="POST" id="add">
		
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