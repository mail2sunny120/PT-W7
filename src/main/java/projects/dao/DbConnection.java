package projects.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import projects.exception.DBException;



public class DbConnection {

	private static String HOST = "localhost";
	private static String PASSWORD = "projects";
	private static String SCHEMA = "projects";
	private static String USER = "projects";
	private static int PORT = 3306;
	
	public static Connection getConnection() {
		String url = String.format("jdbc:mysql://%S:%d/%s?user=%s&password=%s",HOST,PORT,SCHEMA,USER,PASSWORD);
		
		
		try {
			Connection conn = DriverManager.getConnection(url);
			System.out.print("Successful connection to "+SCHEMA);
			return conn;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Unable to get connection"+url);
			
			//e.printStackTrace();
			 throw new DBException("Could not connect to "+SCHEMA);
		}
		
	}
	
}
