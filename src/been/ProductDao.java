package been;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import connection.connect;

public class ProductDao {
	public static Product chaone(int id) throws ClassNotFoundException, SQLException{
		Product product=new Product();
		
String sql="select*from product where pro_id=\""+id+"\";";
		
		Connection connection=connect.connect();
		PreparedStatement pStatement=connection.prepareStatement(sql);
		ResultSet resultSet=pStatement.executeQuery();
	   
		try {
			while(resultSet.next()){
				 Integer pro_id =resultSet.getInt(1);
				 String pro_name =resultSet.getString(2);
				 String pro_price=resultSet.getString(3);
				 String pro_number=resultSet.getString(4);
			     String pro_kind=resultSet.getString(5);
			     String pro_image_=resultSet.getString(6);
				 String pro_image_1=resultSet.getString(7);
				 String pro_image_2=resultSet.getString(8);
				 String pro_image_3=resultSet.getString(9);	
				 String pro_image_4=resultSet.getString(10);
				 String desc=resultSet.getString(11);
			
				product=new Product(pro_id, pro_name, pro_price,pro_number, pro_kind, pro_image_, pro_image_1, pro_image_2, pro_image_3, pro_image_4, desc);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}finally{connect.close(null, null, connection);}
		
			
		
		return product;
	}
	public static List<Product>  chaxu() throws SQLException, ClassNotFoundException{
		String sql="select*from product";
		
		Connection connection=connect.connect();
		PreparedStatement pStatement=connection.prepareStatement(sql);
		ResultSet resultSet=pStatement.executeQuery();
		List<Product> products=new ArrayList<Product>();
	   
		try {
			while(resultSet.next()){
				 Integer pro_id =resultSet.getInt(1);
				 String pro_name =resultSet.getString(2);
				 String pro_price=resultSet.getString(3);
				 String pro_number=resultSet.getString(4);
			     String pro_kind=resultSet.getString(5);
			     String pro_image_=resultSet.getString(6);
				 String pro_image_1=resultSet.getString(7);
				 String pro_image_2=resultSet.getString(8);
				 String pro_image_3=resultSet.getString(9);	
				 String pro_image_4=resultSet.getString(10);
				 String desc=resultSet.getString(11);
			
				Product e=new Product(pro_id, pro_name, pro_price,pro_number, pro_kind, pro_image_, pro_image_1, pro_image_2, pro_image_3, pro_image_4, desc);
				products.add(e);
				}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}finally{connect.close(null, null, connection);}
		return products;
			
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
		public static List<Product>  chakind( String sql) throws SQLException, ClassNotFoundException{
	
			Connection connection=connect.connect();
			PreparedStatement pStatement=connection.prepareStatement(sql);
			ResultSet resultSet=pStatement.executeQuery();
			List<Product> products=new ArrayList<Product>();
		   
			try {
				while(resultSet.next()){
					 Integer pro_id =resultSet.getInt(1);
					 String pro_name =resultSet.getString(2);
					 String pro_price=resultSet.getString(3);
					 String pro_number=resultSet.getString(4);
				     String pro_kind=resultSet.getString(5);
				     String pro_image_=resultSet.getString(6);
					 String pro_image_1=resultSet.getString(7);
					 String pro_image_2=resultSet.getString(8);
					 String pro_image_3=resultSet.getString(9);	
					 String pro_image_4=resultSet.getString(10);
					 String desc=resultSet.getString(11);
				
					Product e=new Product(pro_id, pro_name, pro_price,pro_number, pro_kind, pro_image_, pro_image_1, pro_image_2, pro_image_3, pro_image_4, desc);
					products.add(e);
					}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				
			}finally{connect.close(null, null, connection);}
			return products;
				
			}
		
		


}
