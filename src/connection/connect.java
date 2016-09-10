package connection;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class connect {
	
	public static Connection connect() throws SQLException, ClassNotFoundException {
		
	String url="jdbc:mysql:///shop";
	String user="root";
	String password="123456";
	String driver= "com.mysql.jdbc.Driver";
	 
	Class.forName(driver);
	
	Connection conn=DriverManager.getConnection(url, user, password);
	return conn;
	}
	
	public static void close(ResultSet res ,Statement sta,Connection con){
		if(res!=null){
			
		try {
			res.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		}
		

		if(sta!=null){
			try {
				sta.close();
			} catch (Exception e) {
			e.printStackTrace();
			}
		}
		if(con!=null){
			try {
				con.close();
			} catch (Exception e) {
			e.printStackTrace();
			}
		}
	}
	
	 public void insert() throws SQLException, ClassNotFoundException, IOException{
		  String sql="insert into user(user,password)value('wuyi','1314')";
		 
		  Connection conn=null;
		  Statement  state=null;
		  try {
			  conn= connect();
			  state=conn.createStatement();
			  state.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{close(null,state,conn);}	   
	   }
	 
	 
	 public void select() throws SQLException, ClassNotFoundException, IOException{
			Connection conn=null;
			Statement state=null;
			ResultSet res=null;
			String sql="select id,user,password from user ";
			try {
				conn=connect();
				state=conn.createStatement();
				res=state.executeQuery(sql);
				
				while(res.next()){
					int id=res.getInt(1);
					String user=res.getString(2);
					String password=res.getString(3);
					System.out.println("id:"+id+"user:"+user+"password:"+password);
				}	
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{close(res,state,conn);}

	 }

}
