<%@ Language=Python %>
<!--#include file="include_sample_gb2312.asp"-->
<SCRIPT Language="Python" RUNAT=Server>
aa=u'��html֮ǰ��SCRIPT Language֮�丳ֵ���������aa,��html֮ǰ��SCRIPT Language�е�Response.write�����������html֮��</br>'
bb=u"��html֮ǰ��SCRIPT Language֮�丳ֵ���������bb,��Html֮����SCRIPT Language�е�Response.write���������html֮���λ���޹�</br>"
Response.Write(aa)
</script>
<%
# -*- coding: utf-8 -*-
import pyodbc
import sys;
lib_path = "e:/mysite/ActivePython/lib/"
sys.path.append(lib_path)
import spama



#��odbc����sqlserver���ݿ�
cnxn = pyodbc.connect('DRIVER={SQL Server};SERVER=127.0.0.1;DATABASE=test;UID=sa;PWD=101.101')
cursor=cnxn.cursor()

#��������
cursor.execute("select userID,userName,loginName,password from test")
row=cursor.fetchone()

if row:
	Response.Write(u'�����user_list������</br>')
	Response.Write('%d<br>'%row[0])
	Response.Write('%s<br>'%row[1])
	Response.Write('%s<br>'%row[2])
	Response.Write('%s<br>'%row[3])

a=u"7.��html֮ǰ��< % % > ֮�丳ֵ���������a<br>"
b=u"8.��html֮ǰ��< % % > ֮�����ģ��spama�������ֵc="
sc="%s%d</br>"%(b,spama.c)
b=u"9.��html֮ǰ��< % % > ֮�����ģ��spama������ַ���d="
sd="%s%s</br>"%(b,spama.d)

z=u'10.�ܽ᣺��ANSI��ʽ������Accesss�ɹ�����SCRIPT Language�ж���ı�����ֻ����SCRIPT Language����Response.Write���������JavaScript���෴��< % % >֮�䶨��ı�����������SCRIPT Language����Response.Write�������Ҳ����JavaScript��ʹ��Asp����</br></br>'


cc=u"��html֮ǰ��< % % > ֮�丳ֵ���������cc,��Html֮����Response.write���������html֮���λ���޹�</br>"
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
1.body_HTML����<br>
<div class="clear_fixed">
	<dl class="addlist">
		<dt><em>���ļ�������ʾ�������ݣ�</em></dt>
		<dt><li>ActivePythonʹ��ODBC�������ݿ�</li></dt>
	</dl>
</div>
2.body_Table����
<div class="clear_fixed">
	<table width="60%" id="table">
		<tr><td>����Ա���</td><td>�����˺�</td></tr>
	</table>
</div>
<%
Response.Write(u'3.body_��Response.Write��ӡ�ַ���Hello, %s</br>' % 'world')
Response.Write(u'4.body_��Response.Write��ӡ�ַ���Hi, %s, you have $%d.</br>' % ('Michael', 1000000))
%>
<%=u'5.body_��< % % >��ӡ�ַ���Hi, %s, you have $%d.</br>' % ('Michael', 1000000)%>
<%=u'6.body_��< % % >��ӡ��include������ַ���:%s, ����%d.</br>' % (str_u, int_a)%>
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
