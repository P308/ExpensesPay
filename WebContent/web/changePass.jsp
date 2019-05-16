<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/stylesheet.css" />
<title>パスワード変更</title>
</head>
<body>
	<h1 class="title">パスワード変更</h1>
	<br>
	<form method="post" action="/ExpensesPay/loginConf">
		<div align="center">
		<table>
			<tr>
				<td>現在のパスワード</td>
				<td><input type="password" size="20" name="pass"></td>
			</tr>
			<tr>
				<td>新しいパスワード:</td>
				<td><input type="password" size="20" name="newPass"></td>
            </tr>
    		<tr>
				<td>新しいパスワード(確認):</td>
				<td><input type="password" size="20" name="newPass"></td>
			</tr>
		</table>
		<br>
			<button type="submit" name="submit" value="login">変更</button>
			<button >戻る</button>

		</div>
	</form>
	<% if((request.getAttribute("errmsg"))!=null){ %>
	<%= request.getAttribute("errmsg") %>
	<% } %>
</body>
</html>