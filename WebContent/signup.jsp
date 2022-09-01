<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>sign up</title>
</head>
<body bgcolor="wheat">
<center>
<h1>SIGNUP</h1>
<form action="register.jsp" >
<table border="0">
<tr><td>
USERNAME:</td>
<td> <input type="text" name="name"/></td></tr><tr><td>
PASSWORD:</td>
<td> <input type="password" name="password"/></td></tr>
<tr><td>
DOB: </td><td>	  <input type="date" name="dob"/></td></tr>
</table><br><br>
<input type="submit" value="signup"/>

</form>
</center>
</body>
</html>
