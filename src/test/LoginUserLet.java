package test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginUserLet")

public class LoginUserLet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public LoginUserLet() {

		super();

	}
	
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
		
		String pseudo = request.getParameter("pseudo");
		String password = request.getParameter("mdp");

		BeanUser user = new BeanUser();

		user.setPseudo(pseudo);
		user.setPassword(password);

		LoginUserDao logTry = new LoginUserDao();

		String essai = logTry.connectionUser(user);

		if (essai.equals("logged")) {

			request.setAttribute("affichagePseudoConnexion", pseudo);
			this.getServletContext().getRequestDispatcher("/ListeEvenements.jsp").forward(request, response);

		} else {

			request.setAttribute("errorConnexion", "Identifiants incorrects...Essayez à nouveau.");
			this.getServletContext().getRequestDispatcher("/Register.jsp").forward(request, response);

		}

	}

}