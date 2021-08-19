<%@page import="com.project.phonebook.vo.PhoneBookVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
List<PhoneBookVO> list = (List<PhoneBookVO>)request.getAttribute("list");%>
<%
String holder = request.getParameter("search");
if(holder == null) {
	holder = "";
}
%>

<jsp:include page="/WEB-INF/views/includes/header.jsp">
	<jsp:param value="목록" name="message"/></jsp:include>
	
	<form action="ps" method="POST" id="search">
		<label for="search">검색어</label>
		<input type="hidden" name="a" value="search" />
		<input type="text" name="search" id="search" 
			placeholder="<%= holder %>" />
		<input type="submit" value="검색" />
		<!-- placeholder사용해보기 -->
	</form>
	
	<br />
	
	<table border="1">
		<thead bgcolor="silver" align="center" style="border: none">
			<tr>
				<th width="100">이름</th>
				<th width="150">휴대전화</th>
				<th width="150">전화번호</th>
				<th width="100">도구</th>
			</tr>
		</thead>
		<tbody>
		<% for (PhoneBookVO vo: list) { %>
			<tr align="center">
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