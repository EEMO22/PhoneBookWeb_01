<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String message = request.getParameter("message");
String word = request.getParameter("search");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록</title>
<style>
	#add {
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
	<%
	if (word == null || word.isEmpty()) {
	%>
	<h4><%= message %></h4>
	<%
	} else {
	%>
	<h4><%= message %> (검색어: <%= word %>)</h4>
	<%
	}
	%>
	
</body>
</html>