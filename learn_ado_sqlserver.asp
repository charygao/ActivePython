<%@ Language=Python  CODEPAGE="65001"%>
<SCRIPT Language="Python" RUNAT=Server>
</script>
<%
#解决Python2.7的UnicodeEncodeError: ‘ascii’ codec can’t encode异常错误
import sys
reload(sys)
sys.setdefaultencoding('utf-8')
lib_path = "e:/mysite/ActivePython/lib/"
sys.path.append(lib_path)

#从模块dbconn引入类PySql
from dbconn import PySql

#创建数据访问类的实例
myax=PySql()

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
1.测试内容<br>
<div class="clear_fixed">
	<dl class="addlist">
		<dt><em>调用Sqlserver数据库：</em></dt>
		<dt><li>添加数据</li><li>删除数据</li><li>查询数据</li</dt>		
	</dl>
</div>


</body>
</html>
