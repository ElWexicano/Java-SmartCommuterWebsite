package ie.smartcommuter.models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseUtils {
	
	/**
	 * This method is used to open a connection to the Database.
	 * @return
	 */
	public static Connection OpenDBConnection() {

		try {
			Class.forName("org.sqlite.JDBC");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}  
		Connection connection = null;
		
		try {
			connection = DriverManager.getConnection("jdbc:sqlite:database/smartcommuter.db");
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		
		return connection;
	}
	


	
}
