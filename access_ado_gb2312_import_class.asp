<%@ Language=Python %>
<!--#include file="include_sample_gb2312.asp"-->
<SCRIPT Language="Python" RUNAT=Server>
aa=u'��html֮ǰ��SCRIPT Language֮�丳ֵ���������aa,��html֮ǰ��SCRIPT Language�е�Response.write�����������html֮��</br>'
bb=u"��html֮ǰ��SCRIPT Language֮�丳ֵ���������bb,��Html֮����SCRIPT Language�е�Response.write���������html֮���λ���޹�</br>"
Response.Write(aa)
</script>
<%

import pyodbc
import win32com
import sys
reload(sys)
sys.setdefaultencoding('utf-8')
lib_path = "e:/mysite/ActivePython/lib/"
sys.path.append(lib_path)
import spama

#��ģ��dbconn������Py4Jet
from dbconn import Py4Jet

#�������ݷ������ʵ��
myax=Py4Jet()


#ɾ������
sql= u"delete from test"
myax.execute(sql)

#���һ������
sql= u"Insert into test (�û�����,�û���¼��,password����) values('luoshi','ls','123')"
myax.execute(sql)

#�������ݷ�����Ĳ�ѯ���������ؽ������rs
sql= u"select userID,�û����� as userName,�û���¼�� as loginName,password���� as userPassword,departmentID from test"
rs=myax.query(sql)
while not rs.EOF:
	Response.Write('%d,%s,%s,%s,%s<br>'%(rs("userID"),rs("userName"),rs("loginName"),rs.Fields[3].Value,rs("departmentID")))
	rs.MoveNext()
rs.close


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
		<dt><li>ActivePythonʹ��ADO����Access���ݿ�</li></dt>
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
