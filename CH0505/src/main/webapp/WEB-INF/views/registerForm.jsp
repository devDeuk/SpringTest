<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
	<h1>Register Form</h1>
	
	<a href="registerByGet01?userId=hongkd&dateOfBirth=1234">registerByGet01?userId=hongkd&amp;dateOfBirth=1234</a> <br>
	<a href="registerByGet01?userId=hongkd&dateOfBirth=2018-09-08">registerByGet01?userId=hongkd&amp;dateOfBirth=2018-09-08</a> <br>
	<a href="registerByGet01?userId=hongkd&dateOfBirth=20180908">registerByGet01?userId=hongkd&amp;dateOfBirth=20180908</a> <br>
	<a href="registerByGet01?userId=hongkd&dateOfBirth=2018/09/08">registerByGet01?userId=hongkd&amp;dateOfBirth=2018/09/08</a> <br>
	<a href="registerByGet02?userId=hongkd&dateOfBirth=20180908">registerByGet02?userId=hongkd&amp;dateOfBirth=20180908</a> <br>
	
	<form action="/register" method="post">
		userId: <input type="text" name="userId" value="hongkd"><br>
		password: <input type="text" name="password" value="1234"><br>
		dateOfBirth: <input type="text" name="dateOfBirth" value="20180908"><br>
		<input type="submit" value="register">
	</form>
</body>
</html>
