<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>ENTER THE DETAILS BELOW TO REGISTER</h1>
<form action="hello" method="post">
USERNAME: <input type="text" name="username" autocomplete="off"/><br><br>
PASSWORD: <input type="password" name="pass"/><br><br>
CONFIRM PASSWORD:	<input type="password" name="confirm"/><br><br>
D.O.B:	  <input type="date" name="dob"/><br><br>
	
		<input type="submit" value="login"/>
</form>
</center>
</body>
</html>