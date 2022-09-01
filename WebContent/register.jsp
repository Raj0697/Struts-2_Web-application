<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%! String user,pass,dob; %>
<%
user=request.getParameter("name");
pass=request.getParameter("password");
dob=request.getParameter("dob");
	try
		{
			if(user!=null && pass!=null && dob!=null)
			{
				Class.forName("com.mysql.jdbc.Driver");
				//connection
				Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/struts","root","");
				
				//creating statement object
				Statement s = c.createStatement();
				
					s.executeUpdate("insert into signup values('"+user+"','"+pass+"','"+dob+"')");
					
			
				
				out.println("signup is successfull");
				%>
					<table border="5" align="center">
					<tr><th>username</th>
					<th>password</th>
					<th>dob</th></tr>
				
					<%
					ResultSet rs=s.executeQuery("select * from signup");
					while(rs.next())
					{
						String username=rs.getString(1);
						String password=rs.getString(2);
						String dob=rs.getString(3);
						
						%>
						<tr><td><%= username %></td>
						<td><%= password %></td>
						<td><%= dob %></td></tr>
				<%
					}
				%>
				</table>
				<a href="login.jsp">LOGIN</a>
				<%}
			}
			

catch(Exception e)
{
	out.println(e.getMessage());
}
%>
			
			
			
</body>
</html>