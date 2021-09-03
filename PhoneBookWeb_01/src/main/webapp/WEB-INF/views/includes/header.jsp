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
 <!-- Required meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<title>주소록</title>
<style>

	h3 {
		margin-top: 20px;
	}
	
	#srh {
		margin-bottom: 5px;
	}
	
</style>
</head>
<body>
<div class="container">
	<h3>주소록 Servlet</h3>
	</div>
	<br />
	<div class="container">
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
	</div>
	<br />
	
	 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
    	
</body>
</html>