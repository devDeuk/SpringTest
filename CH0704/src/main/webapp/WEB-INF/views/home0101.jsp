<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>\${member.userId}</td>
			<td>${member.userId}</td>
		</tr>
		<tr>
			<td>\${member.password}</td>
			<td>${member.password}</td>
		</tr>
		<tr>
			<td>\${member.userName}</td>
			<td>${member.userName}</td>
		</tr>
		<tr>
			<td>\${member.email}</td>
			<td>${member.email}</td>
		</tr>
		<tr>
			<td>\${member.dateOfBirth}</td>
			<td>${member.dateOfBirth}</td>
		</tr>
	</table>
	
</body>
</html>
