<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
	String name = (String) request.getAttribute("name");
	String auth = (String) request.getAttribute("auth");
%>
<meta charset="UTF-8">
<title>機能テスト</title>
</head>
<body>
	<div align="center">

		<%
			if (name != null) {
		%>
		<p>名前:<%=name%></p>
		<% if(auth.equals("2")){ %>
		<%=auth%>
		<div>管理者です</div>
		<%
			}
		%>

		<button onclick="histry back()">戻る</button>
		<%
			}
		%>

	</div>
</body>
</html>