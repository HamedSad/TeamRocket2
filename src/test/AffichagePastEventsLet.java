package test;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AffichagePastEventsLet
 */
@WebServlet("/AffichagePastEventsLet")
public class AffichagePastEventsLet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AffichagePastEventsLet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		EventCrudDao affichagePastEvents = new EventCrudDao();
		
		List<BeanEvent> pastEvents = affichagePastEvents.allPastEvents();
						
		System.out.println(pastEvents.get(0).getTitre());
		
		request.setAttribute("events", pastEvents);
		
		System.out.print(affichagePastEvents.allPastEvents().toString());
		this.getServletContext().getRequestDispatcher("/ListeEvenementsPasses.jsp").forward(request, response);	
	}

}
