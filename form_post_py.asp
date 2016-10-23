<%@ Language = Python%>

<html>
	<head>
		<title>
			hello
		</title>
	</head>
	<body>
		<form action="form_receive_py.asp?age=10">
			<label for="">username:</lable><input type="text" name="username" value="luoshi">
			<label for="">password:</lable><input type="password" name="password" value="101101">
			Session("S1")=<%=Session("s1")%><br/>
			<input type="submit" name="btnSubmit" value="Click Me" />
		</form>
	</body>
</html>