<%@page import="webinar.dao.InstrutorDao"%>
<%@page import="webinar.model.Instrutor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="instrutorcontroller" method="post">
		<input name="nome" type="text">
		<input name="formacao" type="text">
		<input name="email" type="text"> 
		<input name="salario" type="text">
		<input type="submit">
	</form>
</body>
</html>