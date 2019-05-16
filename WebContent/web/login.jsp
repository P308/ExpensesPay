<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>ログイン</title>
</head>
<body>
	<font size="4"> <strong>精算管理システム</strong>
	</font>
	<br>
	<!-- リンク未設定 -->
	<form method="post" action="/ExpensesPay/">
		<table>
			<tr>
				<td>社員ID:</td>
				<td><input type="text" size="20" name="id"></td>
			</tr>
			<tr>
				<td>パスワード:</td>
				<td><input type="password" size="20" name="pass"></td>
			</tr>
		</table>
		<br>
			<button type="submit" name="submit" value="login">ログイン</button>
			<button type="reset">リセット</button>
	</form>
</body>
</html>