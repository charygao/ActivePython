<%@ Language=Python  CODEPAGE="65001"%>
<%
import os
Response.Write(os.getcwd())
from jinja2 import Template
from jinja2 import Environment, PackageLoader,FileSystemLoader 
env = Environment(loader = FileSystemLoader('templates')) 
#env = Environment(loader = PackageLoader('templates')) 
template = env.get_template('user.html') 
 
Response.Write(template.render(name='John Doe'))
html1=template.render(name=u'骆实')
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
<%=html1%>
</body>
</html>