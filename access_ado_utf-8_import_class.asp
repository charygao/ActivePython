<%@ Language=Python  CODEPAGE="65001"%>
<!--#include file="include_sample_utf-8.asp"-->
<SCRIPT Language="Python" RUNAT=Server>
aa=u'在html之前在SCRIPT Language之间赋值输入的内容aa,在html之前用SCRIPT Language中的Response.write输出，出现在html之后</br>'
bb=u"在html之前在SCRIPT Language之间赋值输入的内容bb,在Html之间用SCRIPT Language中的Response.write输出，与在html之间的位置无关</br>"
Response.Write(aa)
</script>
<%

#解决Python2.7的UnicodeEncodeError: ‘ascii’ codec can’t encode异常错误
import sys
reload(sys)
sys.setdefaultencoding('utf-8')
lib_path = "e:/mysite/ActivePython/lib/"
sys.path.append(lib_path)
import spama

#从模块dbconn引入类Py4Jet
from dbconn import Py4Jet

#创建数据访问类的实例
myax=Py4Jet()

#删除数据
sql= u"delete from test"
myax.execute(sql)

#添加一条数据
sql= u"Insert into test (用户姓名,用户登录名,password密码) values('luoshi','ls','123')"
myax.execute(sql)

#调用数据访问类的查询方法，返回结果赋给rs
sql= u"select userID,用户姓名 as userName,用户登录名 as loginName,password密码 as userPassword,departmentID from test"
rs=myax.query(sql)
while not rs.EOF:
	Response.Write('%d,%s,%s,%s,%s<br>'%(rs("userID"),rs("userName"),rs("loginName"),rs.Fields[3].Value,rs("departmentID")))
	rs.MoveNext()
rs.close



#从模块test_class引入类people
from test_class import people
from test_class import student

#创建数据访问类的实例
mybaby=people('luoyutian',10,'luoyutian')
sd=u"姓名:%s，年龄:%d，昵称:%s，人数:%d</br>"%(mybaby.name,mybaby.age,mybaby.nickname,people.Count)
Response.Write(sd)

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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../Css/base.css" rel="stylesheet" type="text/css" />
<link href="../css/public.css" rel="stylesheet" type="text/css" />
<link href="../css/iframe.css?version=2015" rel="stylesheet" type="text/css" />
</head>
<body>
<br>
1.body_HTML内容:<br>
<div class="clear_fixed">
	<dl class="addlist">
		<dt><em>此文件用于显示以下内容：</em></dt>
		<dt><li>ActivePython使用ADO连接Access数据库</li></dt>
		<dt><li>Mybaby，姓名：<%=mybaby.name%></li></dt>
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
