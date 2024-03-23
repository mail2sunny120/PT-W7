/**
 * 
 */
package projects;

import java.sql.Connection;

import projects.dao.DbConnection;

/**
 * 
 */
public class DBProjectsApp {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Connection connection =  DbConnection.getConnection();
		
		System.out.println("Successful connection"+ connection.toString());

	}

}
