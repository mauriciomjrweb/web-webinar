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
	<%
		List<Instrutor> instrutores = new InstrutorDao().getAll();
	%>
	<table>
		<%
			for (Instrutor inst : instrutores) {
		%>
		<tr>
			<td><%=inst.getId()%></td>
			<td><%=inst.getNome()%></td>
			<td><%=inst.getEmail()%></td>
			<td><%=inst.getSalario()%></td>
			<td><%=inst.getFormacao()%></td>
			<td><a href="instrutorcontroller?id=<%=inst.getId()%>">Alterar</a></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>