<%@ Language=Python  CODEPAGE="65001"%>
<%
#解决Python2.7的UnicodeEncodeError: ‘ascii’ codec can’t encode异常错误
import sys
reload(sys)
sys.setdefaultencoding('utf-8')
lib_path = "e:/mysite/ActivePython/lib/"
sys.path.append(lib_path)
from imp import reload

#从模块test_class引入类people

from test_class import people
reload(sys.modules['test_class'])

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
reload模块成功<br>
</body>
</html>
