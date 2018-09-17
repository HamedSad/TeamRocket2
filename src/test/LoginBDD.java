package test;

import java.sql.Connection;
import java.sql.DriverManager;

public class LoginBDD {

	private static Connection con = null;

	public static Connection createConnection() {
		
		if (con != null)
			return con;
		else {

			String url = "jdbc:mysql://localhost:3306/teamrocket";
			String username = "root";
			String password = "System84";

			try {

				try {

					Class.forName("com.mysql.jdbc.Driver"); // loading mysql driver
				
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}

				con = DriverManager.getConnection(url, username, password); // attempting to connect to MySQL database

				System.out.println("Printing connection object " + con);

			} catch (Exception e) {
				e.printStackTrace();
			}

			return con;
		}
	}
}