package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.connect;

public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public register() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection connection=null;
		request.setCharacterEncoding("utf-8");
		String user=request.getParameter("username");
		String pwd=request.getParameter("password");
		String eamil=request.getParameter("eamil");
		String sex=request.getParameter("sex");
		String sql="INSERT INTO user(username, password, Email, sex) VALUES (\""+user+"\", \""+pwd+"\",\""+eamil+"\",\""+sex+"\");";
		
		try {
			 connection=connect.connect();
			if(connection.createStatement().executeUpdate(sql)!=0){
				request.getRequestDispatcher("success.jsp").forward(request, response);
			}
			else{
				request.getRequestDispatcher("register.jsp").forward(request, response);
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			connect.close(null, null, connection);
		}
		
		
		
	}

}
