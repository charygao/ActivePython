<%@ Language = Python%>
<%
username = str(Request("username"))
password = Request("password")
age = Request("age")
%>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../Css/base.css" rel="stylesheet" type="text/css" />
<link href="../css/public.css" rel="stylesheet" type="text/css" />
<link href="../css/iframe.css?version=2015" rel="stylesheet" type="text/css" />
</head>
<body>
<br>
1.内容:<br>
<div class="clear_fixed">
	<dl class="addlist">
		<dt><em>接收从上一个页面传递的值：</em></dt>
		<dt><li>form值，姓名：<%=username%></li></dt>
		<dt><li>form值，密码：<%=password%></li></dt>
		<dt><li>querystring值不能用form传递，age：<%=age%></li></dt>
		<dt><li>session,S1：<%=Session("s1")%></li></dt>
	</dl>
</div>

</body>
</html>
