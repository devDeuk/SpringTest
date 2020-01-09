<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
	<h3>Result</h3>
	
	<h4>hobbyList : </h4>
	<c:forEach var="hobby" items="${hobbyList}">
		<c:out value="${hobby}" /> <br>
	</c:forEach>
	
</body>
</html>
