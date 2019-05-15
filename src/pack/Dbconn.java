package pack;

import java.sql.*;


public class Dbconn {

	private static Connection conn;
	
	static
	{
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","gatemate","Gatemate@123");
	}
	catch(Exception ee)
	{
		ee.printStackTrace();
	}
	}
	
	public static Connection getConnection()
	{
		return conn;
	}
}
