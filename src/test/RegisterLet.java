package test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterLet
 */
@WebServlet(description = "servlet associée à Register.jsp", urlPatterns = { "/RegisterLet" })

public class RegisterLet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

    public RegisterLet() {
        super();
  
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		//recuperer les champs du formulaire dans la jsp
		String psd = request.getParameter("pseudo");
		String pwd = request.getParameter("mdp");
		String pwd2 = request.getParameter("mdp2");
		String em = request.getParameter("email");
		
		if (pwd.equals(pwd2)) {
			
		BeanUser user = new BeanUser();
		
		user.setPseudo(psd);
		user.setPassword(pwd);
		user.setEmail(em);
		
		RegisterDao inscription = new RegisterDao();
		
		inscription.register(user);
		
		request.setAttribute("validationInscription", "Tu es désormais inscrit.e");
		request.setAttribute("affichagePseudo", psd);
		this.getServletContext().getRequestDispatcher("/ListeEvenements.jsp").forward(request, response);
		}
		
		else {
			request.setAttribute("errorPass", "Mots de passe non correspondants");
			this.getServletContext().getRequestDispatcher("/Register.jsp").forward(request, response);
		}
	}

}
