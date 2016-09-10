package been;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import connection.connect;

public class UserDao {
	public static User chaone(Integer id) throws ClassNotFoundException, SQLException{
		User user=new User();
		
String sql="select*from user where pro_id=\""+id+"\";";
		
		Connection connection=connect.connect();
		PreparedStatement pStatement=connection.prepareStatement(sql);
		ResultSet resultSet=pStatement.executeQuery();
	   
		try {
			while(resultSet.next()){
				 Integer userid =resultSet.getInt(1);
				 String username =resultSet.getString(2);
				 String password=resultSet.getString(3);
				 String email=resultSet.getString(4);
			     String sex=resultSet.getString(5);
			     
			
				user=new User(userid, username, password,email, sex);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}finally{connect.close(null, null, connection);}
		
			
		
		return user;
	}
	public static List<User>  chaxu() throws SQLException, ClassNotFoundException{
		String sql="select*from user";
		
		Connection connection=connect.connect();
		PreparedStatement pStatement=connection.prepareStatement(sql);
		ResultSet resultSet=pStatement.executeQuery();
		List<User> users=new ArrayList<User>();
	   
		try {
			while(resultSet.next()){
				 Integer userid =resultSet.getInt(1);
				 String username =resultSet.getString(2);
				 String password=resultSet.getString(3);
				 String email=resultSet.getString(4);
			     String sex=resultSet.getString(5);
			     
			
				User e=new User(userid, username, password,email, sex);
				users.add(e);
				}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}finally{connect.close(null, null, connection);}
		return users;
			
		}
		
		public static void update(String sql,Object...args) throws SQLException, ClassNotFoundException{
			
			Connection connection=connect.connect();
			try {
				PreparedStatement pStatement=connection.prepareStatement(sql);
				for(int i=0;i<args.length;i++){
					pStatement.setObject(i+1, args[i]);	
				}
				pStatement.executeUpdate();
			} catch (Exception e) {	
				e.printStackTrace();
			}finally{connect.close(null, null, connection);}		
			
		}
		

}
