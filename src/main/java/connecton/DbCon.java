package connecton;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbCon {
	
	public static Connection connection = null;
	
	public static Connection getConnection() throws ClassNotFoundException,SQLException{
		
		if(connection==null) {
			Class.forName("com.mysql.cj.jdbc.Driver");

	       connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/complexemed", "root", "");
		
	}
	
return connection;
}
}