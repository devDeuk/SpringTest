<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
	<p>str : ${str} </p>
	<p>contains : ${fn:contains(str, "Hello")} </p>
	<p>containsIgnoreCase : ${fn:containsIgnoreCase(str, "Hello")} </p>
	<p>startsWith : ${fn:startsWith(str, "Hello")} </p>
	<p>endsWith : ${fn:endsWith(str, "World!")} </p>
	<p>indexOf : ${fn:indexOf(str, "World!")} </p>
	<p>length : ${fn:length(str)} </p>
	<p>escapeXml : ${fn:escapeXml(str)} </p>
	<p>replace : ${fn:replace(str, "Hello", "Hi")} </p>
	<p>toLowerCase : ${fn:toLowerCase(str)} </p>
	<p>toUpperCase : ${fn:toUpperCase(str)} </p>
	<p>trim : ${fn:trim(str)} </p>
	<p>substring : ${fn:substring(str, 7, 12)} </p>
	<p>substringAfter : ${fn:substringAfter(str, "World")} </p>
	<p>substringBefore : ${fn:substringBefore(str, "World")} </p>
	<p>split : ${fn:split(str, " ")} </p>
	
	<c:set var="strArray" value="${fn:split(str, ' ')}" />
	<p>join : ${fn:join(strArray, "-")} </p>
	<p>join : ${fn:join(fn:split(str, " "), "-")} </p>
</body>
</html>
