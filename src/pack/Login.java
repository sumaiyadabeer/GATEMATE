package pack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
  	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
  		try
		{
	    Connection conn=Dbconn.getConnection();
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		
		request.setAttribute("user",email);
		PreparedStatement ps=conn.prepareStatement("select * from progatemate1 where email=? and pass=?");
		ps.setString(1,email);
		ps.setString(2,pass);
		
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			request.getRequestDispatcher("operation.jsp").forward(request,response);
		}
		else
		{
	
			response.setContentType("text/html");
			response.sendRedirect("index.html");
			PrintWriter out=response.getWriter();
			
			out.println("<center><h3>You entered an invalid username or password. please try again.</h3></center>");
		}
	    }
		
		
		catch(Exception ee)
		{
			ee.printStackTrace();
		}


  	
  	}

}
