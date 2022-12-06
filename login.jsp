<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Estadistica de Usuario</title>
<link rel="stylesheet" href="styles.css"> 
</head>
<body>
	<h1><strong>Estadística de Usuario</strong></h1>
	<br><br><br><br><br>
	<form action = "analisis.jsp" method = "post">
		<input type="text" name="username" placeholder="Usuario" required><br><br>
		<input type="submit" value="Buscar Estadistica">
	</form>
</body>
</html>