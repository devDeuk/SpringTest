<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
	<h3>Result</h3>
	
	<h4>carList : </h4>
	
	<c:forEach var="car" items="${carList}">
		<c:out value="${car}" /> <br>
	</c:forEach>
	
</body>
</html>
