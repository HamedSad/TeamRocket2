package test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NewsletterLet
 */
@WebServlet("/NewsletterLet")
public class NewsletterLet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewsletterLet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String emNews = request.getParameter("email");
		
			
		BeanNewsletter news = new BeanNewsletter();
		
		news.setEmail(emNews);
		
		NewsletterDao confirmationNewsletter = new NewsletterDao();
		
		confirmationNewsletter.registerNewsletter(news);
		
		request.setAttribute("confirmNewsletter", "Ton email a bien été enregistré");
		this.getServletContext().getRequestDispatcher("/Register.jsp").forward(request, response);
	
	}
}
