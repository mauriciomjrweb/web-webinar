<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Novo Instrutor</title>
</head>
<body>
	<form action="instrutorcontroller" method="post" >
		<label>Nome:</label>
		<input type="text" name="nome" />
		<br/>
		<label>Formação:</label>
		<input type="text" name="formacao" />
		<br/>
		<label>E-mail:</label>
		<input type="text" name="email" />
		<br/>
		<label>Salário:</label>
		<input type="text" name="salario" />
		<br/>
		<input type="submit" value="Salvar" />
	</form>
</body>
</html>