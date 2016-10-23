<%@ Language = Python%>
<%
def write_form(msg = ""):
	Response.Write("""
	<html>
	<head>
		<title>Hi there!</title>
	</head>
	<body>
	""" + msg + """
	<form>What is your name? 
		<input type="text" name="txtName" /> 
		<input type="submit" name="btnSubmit" value="Click Me" />
	</form>
	</body>
	</html>
	""")

def parse_form_data():
	name = str(Request("txtName"))
	if name == "" :
		write_form("Please fill in a name.")
		return
		
	Response.Write("""
	<html>
	<head>
		<title>Hey</title>
	</head>
	<body>
	Well hello there """ + name + """.
	</body>
	</html>""")

def main() :
	sub = str(Request("btnSubmit"))
	#two ways below
	#if sub != "None" and sub != "" :
	if Request("btnSubmit").Count != 0:
		parse_form_data()
	else :
		write_form()
main()
%>