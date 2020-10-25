<%@page import="webinar.dao.InstrutorDao"%>
<%@page import="java.util.List"%>
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

<a href="editinstrutor.jsp" >Novo</a>

	<%
		List<Instrutor> instrutores = new InstrutorDao().getAll();
	%>

	<table>
		<%
			for (Instrutor inst : instrutores) {
		%>
		<tr>
			<td><%=inst.getId() %></td>
			<td><%= inst.getNome() %></td>
			<td><%= inst.getEmail() %></td>
			<td><%= inst.getFormacao() %></td>
			<td><%= inst.getSalario() %></td>
		</tr>
		<%
			}
		%>
	</table>

</body>
</html>