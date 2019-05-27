<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<link rel="stylesheet" href="web/css/stylesheet.css">
	<script src="changePass.js" defer></script>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>パスワード変更</title>
</head>

<body>
 <% 	String err = (String)request.getAttribute("errmsg") ;
  		if (err != null) {%>
  		<script>
  			alert('<%= request.getAttribute("errmsg") %>')
  		</script>
  			<%}%>
	<div class="main">
			<p class="sign" align="center">パスワード変更</p>
			<form class="form1" method="post" action="/ExpensesPay/passCheck">
				<input class="un " type="password" align="center" placeholder="現在のパスワード" name="pass" required>
                <input class="pass" type="password" align="center" placeholder="新しいパスワード" id = "newPass1"
                name = "newPass1" required>
				<input class="pass" type="password" align="center" placeholder="新しいパスワード(確認)" id ="newPass2"
				name = "newPass1" oninput="newPassCheck(this)" required>
				<button class="submit" type="submit" name="submit" value="login">変更</button>
				<button class="reset" type="reset" align="center">リセット</button>
			</form>
	</div>
</body>

</html>