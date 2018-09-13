package test;

import test.BeanNewsletter;
import test.LoginBDD;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.util.ArrayList;
import java.sql.SQLException;
import java.sql.*;


public class NewsletterDao {
	
	Connection con = null;
	
	public void registerNewsletter (BeanNewsletter newsletter) {
		
		try {
			con = LoginBDD.createConnection();

			PreparedStatement ps = con.prepareStatement("insert into newsletter values(?)");
			
			ps.setString(1, newsletter.getEmail());
			ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}	

}
