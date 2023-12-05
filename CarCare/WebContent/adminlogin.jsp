<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="img/favicon.ico">
<title>AdminPage Form</title>

<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

.login-container {
	background: #ffffff;
	padding: 40px;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	text-align: center;
}

.login-title {
	font-size: 24px;
	color: #333333;
	margin-bottom: 30px;
}

.icon-user {
	background:
		url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewBox="0 0 24 24"><path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"/></svg>')
		no-repeat center;
	height: 50px; /* Adjust size as per your preference */
	width: 50px; /* Adjust size as per your preference */
	margin: 0 auto;
	margin-bottom: 30px;
}

.input-group {
	margin-bottom: 20px;
}

.input-group label {
	float: left;
	font-size: 18px;
	color: #333333;
	margin-bottom: 5px;
}

.input-group input[type='text'], .input-group input[type='password'] {
	border: none;
	border-bottom: 1px solid #333333;
	width: 100%;
	padding: 10px 0;
	transition: border-color 0.3s;
}

.input-group input[type='text']:focus, .input-group input[type='password']:focus
	{
	outline: none;
	border-bottom-color: #4a90e2;
}

.input-group input[type='submit'] {
	width: 100%;
	padding: 10px;
	border: none;
	border-radius: 5px;
	background-color: #4a90e2;
	color: white;
	cursor: pointer;
	font-size: 18px;
}

.input-group input[type='submit']:hover {
	background-color: #357abd;
}
</style>
</head>
<body>
	<div class="login-container">
		<div class="icon-user"></div>
		<div class="login-title">CUSTOMER LOGIN</div>
		<form action="adminCheck.car" method="post">
			<div class="input-group">
				<label for="username">관리자아이디:</label> <input type="text"
					id="username" name="username" required>
			</div>
			<div class="input-group">
				<label for="password">관리자비밀번호:</label> <input type="password"
					id="password" name="password" required>
			</div>
			<div class="input-group">
				<input type="submit" value="Login">
			</div>
		</form>
	</div>
</body>
</html>