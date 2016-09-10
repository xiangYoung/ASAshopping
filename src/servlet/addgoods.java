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


public class addgoods extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public addgoods() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
	  String pro_name= request.getParameter("proname");
	  String pro_kind= request.getParameter("prokind");
	  String pro_number= request.getParameter("pronumber");
	  String pro_price= request.getParameter("proprice");
	  String desc= request.getParameter("desc");
	  String images=request.getParameter("image");
	  String image[] = images.split(",");
	
	  String sql = "insert into product(pro_name,pro_price ,pro_number ,pro_kind ,pro_image_big ,pro_image_1 ,pro_image_2 ,pro_image_3 ,pro_image_4 ,pro_desc) values (?,?,?,?,?,?,?,?,?,?);";
	  try {
		Connection connection = connect.connect();
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setString(1, pro_name);
		ps.setString(2, pro_price);
		ps.setString(3, pro_number);
		ps.setString(4, pro_kind);
		ps.setString(5, image[0]);
		ps.setString(6, image[1]);
		ps.setString(7, image[2]);
		ps.setString(8, image[3]);
		ps.setString(9, image[4]);
		ps.setString(10, desc);
		response.setHeader("Content-type", "text/html;charset=utf-8");
		if(ps.executeUpdate()!=0){
			response.getWriter().print("操作成功！<a href='back.jsp'>后台主页</a>");
//			 request.getRequestDispatcher("victory.jsp").forward(request, response);  	
		}
		else{response.getWriter().print("操作失败！<a href='back.jsp'>后台主页</a>");}
//		else{request.getRequestDispatcher("mistake.jsp").forward(request, response);}
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		
	}

	 
	  
	  
	 
	  
	  
	  
	  
		
		
	}

}
