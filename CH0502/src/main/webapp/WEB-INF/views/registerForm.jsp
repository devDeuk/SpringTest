<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
	<h1>Register Form</h1>
	
	<a href="register?userId=hongkd&password=1234">register?userId=hongkd&amp;password=1234</a> <br>
	<a href="register/hongkd">register/hongkd</a> <br>

	<form action="/register01" method="post">
		userId: <input type="text" name="userId" value="hongkd"><br>
		password: <input type="text" name="password" value="1234"><br>
		coin: <input type="text" name="coin" value="100"><br>
		<input type="submit" value="register01">
	</form>
	
	<form action="/register02" method="post">
		userId: <input type="text" name="userId" value="hongkd"><br>
		password: <input type="text" name="password" value="1234"><br>
		coin: <input type="text" name="coin" value="100"><br>
		<input type="submit" value="register02">
	</form>
	
	<form action="/register03" method="post">
		userId: <input type="text" name="userId" value="hongkd"><br>
		password: <input type="text" name="password" value="1234"><br>
		coin: <input type="text" name="coin" value="100"><br>
		<input type="submit" value="register03">
	</form>
	
	<form action="/register04" method="post">
		userId: <input type="text" name="userId" value="hongkd"><br>
		password: <input type="text" name="password" value="1234"><br>
		coin: <input type="text" name="coin" value="100"><br>
		<input type="submit" value="register04">
	</form>

	<form action="/register05" method="post">
		userId: <input type="text" name="userId" value="hongkd"><br>
		password: <input type="text" name="password" value="1234"><br>
		coin: <input type="text" name="coin" value="100"><br>
		<input type="submit" value="register05">
	</form>
	
</body>
</html>
