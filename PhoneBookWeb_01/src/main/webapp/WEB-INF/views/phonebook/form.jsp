<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
<jsp:include page="/WEB-INF/views/includes/header.jsp">
	<jsp:param value="새 주소 등록" name="message"/></jsp:include>
	<div class="container">
		<form action="<%= request.getContextPath() %>/ps" method="POST" id="add">
			<div class="form-row row">
				<input type="hidden" value="add" name="a" />
				<div class="form-group col-sm">
					<label for="name">이름</label><br />
					<input type="text" name="name" id="name" class="form-control" />
				</div>
				<div class="form-group col-sm-4">
					<label for="hp">휴대전화</label><br />
					<input type="text" name="hp" id="hp" class="form-control" />
				</div>
				
				<div class="form-group col-sm-4">
					<label for="tel">집전화</label><br />
					<input type="text" name="tel" id="tel" class="form-control" />
				</div>
				
				<br />
				<div>
				<input type="submit" value="주소 등록" id="btn" button class="btn btn-primary btn-sm" />
				</div>
			</div>	
		</form>
	</div>
	
<p><a href="<%= request.getContextPath() %>/ps">목록 보기</a>
</body>
</html>