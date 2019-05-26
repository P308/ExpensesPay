<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<%
	String id = (String) request.getAttribute("id");
	String name = (String) request.getAttribute("name");
	String dept = (String) request.getAttribute("dept");
	String post = (String) request.getAttribute("post");
%>
	<link rel="stylesheet" type="text/css" href="web/css/stylesheet.css" />
	<meta charset="UTF-8">
	<title>機能テスト</title>
</head>

<body>
	<header>
		<table class="menber">
			<tr>
				<td>ID</td>
				<td><%=id %></td>
			</tr>
			<tr>
				<td>名前</td>
				<td><%=name %></td>
			</tr>
			<tr>
				<td>部署</td>
				<td><%=post %><%=dept %></td>
			</tr>
		</table>
		<float class="title">
			<h1>マスタメンテナンスメニュー</h1>
		</float>
		<div class="setting">
			<form method="post" action="/ExpensesPay/passChange">
			<button type="submit" class="btn-square-shadow">パスワード変更</button>
			</form>
		</div>
	</header>


    <float class="child">
        <p></p>
    </float>
 	<div align="center">
		<float class="child">
			<p>(1)事前申請</p>
			<p><a class="btn-flat-border">経費事前申請</a></p>
			<p><a class="btn-flat-border">申請一覧</a></p>
		</float>
		<float class="child">
			<p>(2)精算</p>
			<p><a class="btn-flat-border-master">交通費精算</a></p>
			<p><a class="btn-flat-border-master">出張費精算</a></p>
			<p><a class="btn-flat-border-master">経費精算</a></p>
			<p><a class="btn-flat-border-master">精算一覧</a></p>
		</float>
	</div>
	<float class="child">
		<p></p>
	</float>
</body>

</html>