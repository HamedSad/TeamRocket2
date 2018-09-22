package test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;
import java.util.ArrayList;

@WebServlet("/LoginUserLet")

public class LoginUserLet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public LoginUserLet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String pseudo = request.getParameter("pseudo");
		String password = request.getParameter("mdp");
		BeanUser user = new BeanUser();

		user.setPseudo(pseudo);
		user.setPassword(password);

		LoginUserDao logTry = new LoginUserDao();

		int essai = logTry.fetchIdUser(user);

		if (essai != 0) {

			HttpSession userLog = request.getSession();
			
			userLog.setAttribute("idUser", essai);
			userLog.setAttribute("pseudo", pseudo);

			EventCrudDao affichageEvents = new EventCrudDao();

			request.setAttribute("events", affichageEvents.allEvents());
			request.setAttribute("pseudo", pseudo);
			request.getRequestDispatcher("/ListeEvenements.jsp").forward(request, response);

		} else {

			request.setAttribute("error", "Identifiants incorrects...Essayez à nouveau.");
			request.getRequestDispatcher("/Register.jsp").forward(request, response);

		}
	}
}