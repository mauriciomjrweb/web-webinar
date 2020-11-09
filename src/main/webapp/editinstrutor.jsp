<%@page import="webinar.dao.InstrutorDao"%>
<%@page import="webinar.model.Instrutor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Instrutor</title>
</head>
<body>
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		Instrutor inst = new InstrutorDao().get(id);
	%>
	<form action="instrutorcontroller" method="post">
		<input type="hidden" name="id" value="<%= inst.getId() %>" />
		<label>Nome:</label> 
		<input type="text" name="nome" value="<%= inst.getNome() %>" /> <br /> 
		<label>Formação:</label>
		<input type="text" name="formacao" value="<%= inst.getFormacao() %>" /> <br /> 
		<label>E-mail:</label> 
		<input type="text" name="email" value="<%= inst.getEmail() %>" /> <br /> 
		<label>Salário:</label> 
		<input type="text" name="salario" value="<%= inst.getSalario() %>" /> <br /> 
		<input type="submit" value="Salvar" />
	</form>
</body>
</html>