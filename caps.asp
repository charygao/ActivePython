<%@ Language=Python %>
<script language="javascript" type="text/javascript">	
	function submit_Click() {
		alert("OK有希望");
	}
</script>
<HTML>

<HEAD>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<BODY BACKGROUND="/samples/images/backgrnd.gif">

<TITLE>ActivePython test</TITLE>

</HEAD>

<BODY BGCOLOR="FFFFFF">

<SCRIPT Language="Python" RUNAT=Server>
# NOTE that the <% tags below execute _before_ these tags!
Response.Write("<br>Hello from Python<P>")
Response.Write("Browser is "+bc.browser)
import win32api # Should be no problem using win32api in ASP pages.
Response.Write("<p>Win32 username is "+win32api.GetUserName())
</SCRIPT>

<BODY BGCOLOR="FFFFFF">
<SCRIPT Language="Python" RUNAT=Server>Response.Write(b)</SCRIPT>
<% 
import sys
print(sys.path)
from win32com.axscript.asputil import *
a=100
b=200
d=[1,3,5,7]
str = "Hello World!"
%>

<%bc = Server.CreateObject("MSWC.BrowserType")%>
<BODY BGCOLOR="FFFFFF">
测试
<table border=1> 
<tr><td>Browser</td><td> <%=bc.browser %> 
<tr><td>Version</td><td> <%=bc.version %> </td></TR> 
<tr><td>Frames</td><td> 
<%Response.Write( iif(bc.frames, "TRUE", "FALSE")) %></td></TR> 
<tr><td>Tables</td><td> 
<%Response.Write( iif (bc.tables, "TRUE", "FALSE")) %></td></TR> 
<tr><td>BackgroundSounds</td><td> 
<%Response.Write( iif(bc.BackgroundSounds, "TRUE", "FALSE"))%></td></TR> 
<tr><td>VBScript</td><td> 
<%Response.Write( iif(bc.vbscript, "TRUE", "FALSE"))%></td></TR> 
<tr><td>JavaScript</td><td> 
<%Response.Write( iif(bc.javascript, "TRUE", "FALSE"))%></td></TR> 

</table> 
<p>
字符串 <%=str%><br>
截取2:10 <%Response.Write(str[2:10] + "<br>")%>
截取0:15 <%=str[0:15]%><br><br>
<span onClick='submit_Click();' style='cursor:pointer;'><font color='#000099'>点击测试javascript_Click</font></span><br>
</body>
</html>
