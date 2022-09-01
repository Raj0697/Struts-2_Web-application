package sample;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class loginpage 
{
	public String username;
	public String password;
	
	public String execute() throws Exception
	{
		try
		{
			
			Scanner sc = new Scanner(System.in);
			Class.forName("com.mysql.jdbc.Driver");
			Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/struts","root","");
			Statement s = c.createStatement();
			
		
			ResultSet rs = s.executeQuery("select * from login");
			while(rs.next())
			{
				
				username = rs.getString(1);
				password = rs.getString(2);
				if(username.equals("user") && password.equals("pass"))
				{
					return "success";
				}
				else
				{
					return "error";
				}
				
			}

			c.close();
			s.close();
			sc.close();
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		return "notfound";
	}
	
}
