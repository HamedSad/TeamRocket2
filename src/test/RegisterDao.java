package test;

import test.BeanUser;
import test.LoginBDD;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.util.ArrayList;
import java.sql.SQLException;
import java.sql.*;

public class RegisterDao {

	Connection con = null;

	public void register(BeanUser user) {

		try {
			con = LoginBDD.createConnection();

			PreparedStatement ps = con.prepareStatement("insert into register values(?,?,?)");

			ps.setString(1, user.getPseudo());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getEmail());
			ps.executeUpdate();
			

		} catch (SQLException e) {
			e.printStackTrace();

		}
	}
}
