package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




import connection.connect;

/**
 * Servlet implementation class logoin
 */
public class logoin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public logoin() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		    if(request.getParameter("user").equals("admin") && request.getParameter("password").equals("admin") )
		    	  {request.getRequestDispatcher("back.jsp").forward(request, response);}
		    
		    
		    else{ java.lang.String sql="select password from user where username=\""+request.getParameter("user")+"\" and password=\""+request.getParameter("password")+"\";";
		    HttpSession session = request.getSession(true);  
		    	try {
					Connection connection=connect.connect();
					if(connection.createStatement().executeQuery(sql).next()==true && session.getAttribute("rand").equals(request.getParameter("yanzheng")) ){
						
						request.getRequestDispatcher("index.jsp").forward(request, response);
						
					}
					else{
						
						request.getRequestDispatcher("login.jsp").forward(request, response);}
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		      
		    } 
		         
		     
	       
		
	}

}
