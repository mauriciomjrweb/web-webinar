<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="webinar.dao.InstrutorDao"%>
<%@page import="webinar.model.Instrutor"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<a href="novoinstrutor.jsp">Novo Instrutor</a>
	
	<jsp:useBean id="daoinst" class="webinar.dao.InstrutorDao" />
	
	<table>
		<c:forEach items="${daoinst.all}" var="inst" >
			<tr>
				<td>${inst.id }</td>
				<td>${inst.nome}</td>
				<td>${inst.email}</td>
				<td>${inst.salario}</td>
				<td>${inst.formacao}</td>
				<td><a href="instrutorcontroller?id=${inst.id}">Alterar</a></td>
			</tr>

		</c:forEach>

	</table>
</body>
</html>