<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%
	String[] hobbyArray = {"Music", "Movie"};
%>

<html>
<head>
	<title>Home</title>
</head>
<body>
	<c:catch var="ex">
		<%= hobbyArray[3]%>
	</c:catch>
	
	<p>
		<c:if test="${ex != null}">
			${ex}
		</c:if>
	</p>
</body>
</html>
