<%@page import="com.project.phonebook.vo.PhoneBookVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
List<PhoneBookVO> list = (List<PhoneBookVO>)request.getAttribute("list");

String holder = request.getParameter("search");
if(holder == null) {
	holder = "";
}
%>

<jsp:include page="/WEB-INF/views/includes/header.jsp">
	<jsp:param value="목록" name="message"/></jsp:include>
	<div class="container">
		<form action="ps" method="POST" id="search">
		
			<label for="search">검색어</label>
			<input type="hidden" name="a" value="search" />
			
			<input type="text" name="search" id="search" 
				placeholder="<%= holder %>" />
			<input type="submit" value="검색" button class="btn btn-dark btn-sm" id="srh" />
			
		</form>
	</div>
	
	<br />
	<div class="container">
	<div class="table table-striped">
		<table>
			<thead class="thead-dark">
				<tr class="text-center">
					<th scope="col">이름</th>
					<th scope="col">휴대전화</th>
					<th scope="col">전화번호</th>
					<th scope="col">도구</th>
				</tr>
			</thead>
			
			<tbody>
			<% for (PhoneBookVO vo: list) { %>
				<tr>
					<td><%= vo.getName() %></td>
					<td><%= vo.getHp() %></td>
					<td><%= vo.getTel() %></td>
					<td>
						<form action="<%= request.getContextPath() %>/ps" method="POST">
							<input type="hidden" name="a" value="delete" />
							<input type="hidden" name="id" value="<%= vo.getId() %>" />
							<input type="submit" value="삭제" button class="btn btn-outline-secondary btn-sm" />
						</form>
					</td>
				</tr>
				<% } %>
			</tbody>
			
		</table>
	</div>
	</div>
	<br />
	
	<jsp:include page="/WEB-INF/views/modal.jsp" />
	
</body>
</html>