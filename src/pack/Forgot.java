package pack;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Forgot extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try
		{
			Connection conn=Dbconn.getConnection();
			String email=request.getParameter("email");
			String pass=request.getParameter("pass");
			
			PreparedStatement ps=conn.prepareStatement("update progatemate1 set pass=? where email=?");
			ps.setString(1,pass);
			ps.setString(2,email);
			
			int i=ps.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("update.jsp");
			}
			else
			{
				response.sendRedirect("operation.jsp");
			}
				
		}
	
		catch(Exception ee)
		{
			ee.printStackTrace();
		}
	}

}
