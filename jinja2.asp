<%@ Language=Python  CODEPAGE="65001"%>
<%
from jinja2 import Template
template = Template('Hello {{ name }}!')

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