package test;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RegisterDao {
	Connection con = null;

	public boolean fetchPseudo(BeanUser user) {
		boolean bol = true;

		try {
			ResultSet rs = null;

			String psd = user.getPseudo();

			con = LoginBDD.createConnection();
			PreparedStatement ps = con.prepareStatement("select pseudo from register where pseudo =?");

			ps.setString(1, psd);
			rs = ps.getResultSet();

			rs = ps.executeQuery();
			if (rs.next()) {
			} else

				bol = false;
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return bol;
	}

	public boolean fetchMail(BeanUser user) {
		boolean bol = true;

		try {
			ResultSet rs = null;

			String mail = user.getPseudo();

			con = LoginBDD.createConnection();
			PreparedStatement ps = con.prepareStatement("select email from register where email =?");

			ps.setString(1, mail);
			rs = ps.getResultSet();

			rs = ps.executeQuery();
			if (rs.next()) {
				
				
			} else

				bol = false;
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return bol;
	}

	public void register(BeanUser user) {
		try {

			con = LoginBDD.createConnection();
			PreparedStatement ps = con.prepareStatement("insert into register (pseudo, pwd, email) values(?,?,?)");
			ps.setString(1, user.getPseudo());

			ps.setString(2, user.getPassword());

			ps.setString(3, user.getEmail());

			ps.executeUpdate();
		} catch (SQLException e) {

			e.printStackTrace();
		}

	}
}