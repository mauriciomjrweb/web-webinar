<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
	<c:set var="instrutores" value="${daoinst.all}" />

	<c:if test="${not empty instrutores}">
		<table>
			<c:forEach items="${instrutores}" var="inst">
				<tr>
					<td>${inst.id }</td>
					<td>${inst.nome}</td>
					<td>${inst.email}</td>
					<td>
						<fmt:setLocale value="pt_BR" /> 
						<fmt:formatNumber value="${inst.salario}" type="currency" />
					</td>
					<td>${inst.formacao}</td>
					<td><a href="instrutorcontroller?id=${inst.id}">Alterar</a></td>
				</tr>

			</c:forEach>

		</table>
	</c:if>
</body>
</html>
<!-- 
https://www.tutorialspoint.com/jsp/jsp_standard_tag_library.htm
https://www.javatpoint.com/jstl-core-tags
 -->