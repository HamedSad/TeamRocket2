package test;

import java.sql.Connection;

import java.sql.PreparedStatement;

import java.sql.ResultSet;

import java.sql.SQLException;

public class LoginUserDao {

	public int fetchIdUser(BeanUser user) {

		Connection con = null;

		ResultSet result = null;
		String ps = user.getPseudo();

		String mp = user.getPassword();

		int userIdLog = 0;
		try {

			con = LoginBDD.createConnection();
			PreparedStatement st = con.prepareStatement("SELECT idUser FROM register WHERE pseudo =? AND pwd=?");
			st.setString(1, ps);

			st.setString(2, mp);

			result = st.getResultSet();

			result = st.executeQuery();
			while (result.next()) {

				userIdLog = result.getInt("idUser");

			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return userIdLog;
	}

}