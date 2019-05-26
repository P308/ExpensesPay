<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<link rel="stylesheet" href="web/css/stylesheet.css">
	<script src="sample.js" defer></script>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>ログイン</title>
</head>

<body>
	<div class="main">
			<p class="sign" align="center">パスワード変更</p>
			<form class="form1" method="post" action="/ExpensesPay/loginConf" onsubmit="return chkHissu(this)">
				<input class="un " type="password" align="center" placeholder="現在のパスワード" name="id">
                <input class="pass" type="password" align="center" placeholder="新しいパスワード" name="pass">
                <input class="pass" type="password" align="center" placeholder="新しいパスワード" name="pass">
				<button class="submit" type="submit" name="submit" value="login">変更</button>
				<button class="reset" type="reset" align="center">リセット</button>
			</form>
			   <% 	String err = (String)request.getAttribute("errmsg") ;
  			if (err != null) {%>
  			<script>
  				alert('<%= request.getAttribute("errmsg") %>')
  			</script>
  		<%-- <p align="center"><%= request.getAttribute("errmsg") %></p> --%>

  	<%}%>
	</div>
</body>

</html>