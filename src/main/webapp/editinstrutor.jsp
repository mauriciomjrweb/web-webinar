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
	<form action="instrutorcontroller" method="post">
		<input type="hidden" name="id" value="${instrutor.id}" />
		<label>Nome:</label> 
		<input type="text" name="nome" value="${instrutor.nome}" /> <br /> 
		<label>Formação:</label>
		<input type="text" name="formacao" value="${instrutor.formacao}" /> <br /> 
		<label>E-mail:</label> 
		<input type="text" name="email" value="${instrutor.email}" /> <br /> 
		<label>Salário:</label> 
		<input type="text" name="salario" value="${instrutor.salario}" /> <br /> 
		<input type="submit" value="Salvar" />
	</form>
</body>
</html>