<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<title>Home</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>member.userId</td>
			<td>${member.userId}</td>
		</tr>
		<tr>
			<td>member.userId</td>
			<td><c:out value="${member.userId}" /></td>
		</tr>
		<tr>
			<td>member.userId</td>
			<td><c:out value="${member.userId}" default="hongkd" /></td>
		</tr>
	</table>
</body>
</html>
