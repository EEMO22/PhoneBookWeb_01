<%@page import="com.project.phonebook.vo.PhoneBookVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
List<PhoneBookVO> list = (List<PhoneBookVO>)request.getAttribute("list");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록</title>
</head>
<body>
	<h3>주소록 Servlet</h3>
	<h4>목록</h4>
	
	<form action="ps" method="POST"> <%-- doGet으로는 안되나? --%>
		<label for="search">검색어</label>
		<input type="hidden" name="a" value="search" />
		<input type="text" name="search" id="search" />
		<input type="submit" value="검색" />
		<!-- placeholder사용해보기 -->
	</form>
	
	<br />
	
	<table border="1">
		<thead>
			<tr>
				<th>이름</th>
				<th>휴대전화</th>
				<th>전화번호</th>
				<th>도구</th>
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
						<input type="submit" value="삭제" />
					</form>
				</td>
			</tr>
			<% } %>
		</tbody>
	</table>
	<br />
	
	<p>
		<a href="<%= request.getContextPath() %>/ps?a=form">새 주소 추가</a>
	</p>
	
</body>
</html>