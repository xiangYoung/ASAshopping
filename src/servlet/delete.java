package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.connect;


import been.UserDao;

public class delete extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        int id=Integer.parseInt(request.getParameter("id"));
        
        String sql="delete from user where id=\"" +id+"\";";
        try {
    		Connection connection = connect.connect();
    		
    		
    		response.setHeader("Content-type", "text/html;charset=utf-8");
    		if(connection.createStatement().executeUpdate(sql)!=0){
    			response.getWriter().print("操作成功！<a href='back.jsp'>后台主页</a>");
//    			 request.getRequestDispatcher("victory.jsp").forward(request, response);  	
    		}
    		else{response.getWriter().print("操作失败！<a href='back.jsp'>后台主页</a>");}
//    		else{request.getRequestDispatcher("mistake.jsp").forward(request, response);}
    	} catch (ClassNotFoundException e) {
    		// TODO Auto-generated catch block
    		e.printStackTrace();
    	} catch (SQLException e) {
    		// TODO Auto-generated catch block
    		e.printStackTrace();
    		
    	}


		
		//response.setHeader("Content-type", "text/html;charset=utf-8");
		//response.getWriter().print("操作成功！<a href='back.jsp'>后台主页</a>");
		
	}

}
