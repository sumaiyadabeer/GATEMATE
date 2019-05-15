package pack;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Reg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try
		{
		Connection conn=Dbconn.getConnection();

		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String uname=request.getParameter("uname");
		String mobile=(request.getParameter("mobile"));
		String address=request.getParameter("address");
		String dob=request.getParameter("dob");

			
		request.setAttribute("user",email+" "+uname );
		PreparedStatement ps=conn.prepareStatement("insert into progatemate1 values(?,?,?,?,?,?)");
		
		
		ps.setString(1,email);
		ps.setString(2,pass);
		ps.setString(3,uname);
		ps.setString(4,mobile);
		ps.setString(5,address);
		ps.setString(6,dob);
		
		int i=ps.executeUpdate();
		if(i>0)
		{
			request.getRequestDispatcher("index.html").forward(request,response);
		}
		else
		{
			response.sendRedirect("login.jsp");
		}
		}
		
		catch(Exception ee)
		{
			ee.printStackTrace();
			 
		}
		
	
	}

}
