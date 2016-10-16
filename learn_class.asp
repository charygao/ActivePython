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

#从模块test_class引入类people
from test_class import people
from test_class import student

#创建数据访问类的实例
mybaby=people('luoyutian',10,'luoyutian')
sd=u"姓名:%s，年龄:%d，昵称:%s，人数:%d</br>"%(mybaby.name,mybaby.age,mybaby.nickname,people.Count)
Response.Write(sd)


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
		<dt><em>调用类：</em></dt>
		<dt><li>测试类的属性和方法</li><li>测试类的继承</li></dt>		
	</dl>
</div>


</body>
</html>
