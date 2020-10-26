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
	<%
	int id = Integer.parseInt(request.getParameter("id"));
	Instrutor instrutor = new InstrutorDao().get(id);
	%>
	<form action="instrutorcontroller" method="post">
		<input type="hidden" name="id" value="<%=id%>" /> 
		<input name="nome" type="text" value="<%=instrutor.getNome()%>"> 
		<input name="formacao" type="text" value="<%=instrutor.getFormacao()%>">
		<input name="email" type="text" value="<%=instrutor.getEmail()%>">
		<input name="salario" type="text" value="<%=instrutor.getSalario()%>">
		<input type="submit">
	</form>
</body>
</html>