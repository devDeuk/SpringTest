<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>\${coin}</td>
			<td>${coin}</td>
		</tr>
		<tr>
			<td>\${coin + 100}</td>
			<td>${coin + 100}</td>
		</tr>
		<tr>
			<td>\${coin - 100}</td>
			<td>${coin - 100}</td>
		</tr>
		<tr>
			<td>\${coin * 100}</td>
			<td>${coin * 100}</td>
		</tr>
		<tr>
			<td>\${coin / 100}</td>
			<td>${coin / 100}</td>
		</tr>
		<tr>
			<td>\${coin / 100}</td>
			<td>${coin div 100}</td>
		</tr>
		<tr>
			<td>\${coin % 100}</td>
			<td>${coin % 100}</td>
		</tr>
		<tr>
			<td>\${coin % 100}</td>
			<td>${coin mod 100}</td>
		</tr>
	</table>
</body>
</html>
