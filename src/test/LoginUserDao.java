package test;

import java.sql.Connection;

import java.sql.PreparedStatement;

import java.sql.ResultSet;

import java.sql.SQLException;

public class LoginUserDao {

	public String connectionUser(BeanUser user) {
		String retourLog = "";

		Connection con = null;

		ResultSet result = null; // je crée des variables String qui vont contenir les attributs de mon model
									// String ps = user.getPseudo();

		String mp = user.getPassword();
		String ps = user.getPseudo();
		try {

			con = LoginBDD.createConnection();

			PreparedStatement st = con.prepareStatement("SELECT pseudo FROM register WHERE pseudo =? AND pwd=?");

			st.setString(1, ps);
			st.setString(2, mp);
			
			result = st.getResultSet();

			result = st.executeQuery();
			
			if (result.next()) {

				retourLog = "logged";

			} else {

				retourLog = "error";

			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return retourLog;
	}

}
