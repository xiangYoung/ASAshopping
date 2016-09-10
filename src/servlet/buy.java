package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.connect;


public class buy extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public buy() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String province=request.getParameter("province");
		String city=request.getParameter("city");
		String address=request.getParameter("address");
		String buyname=request.getParameter("buyername");
		String phone=request.getParameter("phone");
		request.getRequestDispatcher("buyover.jsp").forward(request, response);
	}

}
