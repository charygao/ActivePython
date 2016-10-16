<%@ Language=Python %>
<!--#include file="include_sample_gb2312.asp"-->
<SCRIPT Language="Python" RUNAT=Server>
aa=u'在html之前在SCRIPT Language之间赋值输入的内容aa,在html之前用SCRIPT Language中的Response.write输出，出现在html之后</br>'
bb=u"在html之前在SCRIPT Language之间赋值输入的内容bb,在Html之间用SCRIPT Language中的Response.write输出，与在html之间的位置无关</br>"
Response.Write(aa)
</script>
<%
# -*- coding: utf-8 -*-
import pyodbc
import sys;
lib_path = "e:/mysite/ActivePython/lib/"
sys.path.append(lib_path)
import spama



#用odbc连接sqlserver数据库
cnxn = pyodbc.connect('DRIVER={SQL Server};SERVER=127.0.0.1;DATABASE=test;UID=sa;PWD=101.101')
cursor=cnxn.cursor()

#调用数据
cursor.execute("select userID,userName,loginName,password from test")
row=cursor.fetchone()

if row:
	Response.Write(u'输出表user_list的内容</br>')
	Response.Write('%d<br>'%row[0])
	Response.Write('%s<br>'%row[1])
	Response.Write('%s<br>'%row[2])
	Response.Write('%s<br>'%row[3])

a=u"7.在html之前在< % % > 之间赋值输入的内容a<br>"
b=u"8.在html之前在< % % > 之间调用模块spama输入的数值c="
sc="%s%d</br>"%(b,spama.c)
b=u"9.在html之前在< % % > 之间调用模块spama输入的字符串d="
sd="%s%s</br>"%(b,spama.d)

z=u'10.总结：以ANSI格式，调用Accesss成功！在SCRIPT Language中定义的变量，只能在SCRIPT Language中用Response.Write输出，类似JavaScript；相反在< % % >之间定义的变量，可以在SCRIPT Language中用Response.Write输出，这也类似JavaScript中使用Asp变量</br></br>'


cc=u"在html之前在< % % > 之间赋值输入的内容cc,在Html之间用Response.write输出，与在html之间的位置无关</br>"
%>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../Css/base.css" rel="stylesheet" type="text/css" />
<link href="../css/public.css" rel="stylesheet" type="text/css" />
<link href="../css/iframe.css?version=2015" rel="stylesheet" type="text/css" />
</head>
<body>
<br>
1.body_HTML内容<br>
<div class="clear_fixed">
	<dl class="addlist">
		<dt><em>此文件用于显示以下内容：</em></dt>
		<dt><li>ActivePython使用ODBC连接数据库</li></dt>
	</dl>
</div>
2.body_Table内容
<div class="clear_fixed">
	<table width="60%" id="table">
		<tr><td>管理员编号</td><td>管理账号</td></tr>
	</table>
</div>
<%
Response.Write(u'3.body_用Response.Write打印字符串Hello, %s</br>' % 'world')
Response.Write(u'4.body_用Response.Write打印字符串Hi, %s, you have $%d.</br>' % ('Michael', 1000000))
%>
<%=u'5.body_用< % % >打印字符串Hi, %s, you have $%d.</br>' % ('Michael', 1000000)%>
<%=u'6.body_用< % % >打印从include引入的字符串:%s, 数字%d.</br>' % (str_u, int_a)%>
<SCRIPT Language="Python" RUNAT=Server>
Response.Write(bb)
</script>
<%=a%>
<SCRIPT Language="Python" RUNAT=Server>
Response.Write(cc)
</script>
<%=sc%>
<%=sd%>
<%=z%>
</body>
</html>
