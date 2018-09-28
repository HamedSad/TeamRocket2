package test;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AffichageEventsLet")
public class AffichageEventsLet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AffichageEventsLet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response)

			throws ServletException, IOException {
	}
    
    

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		EventCrudDao affichageEvents = new EventCrudDao();
		
		List<BeanEvent> events = affichageEvents.allEvents();
						
		System.out.println(events.get(0).getTitre());
		
		request.setAttribute("events", events);
		
		System.out.print(affichageEvents.allEvents().toString());
		this.getServletContext().getRequestDispatcher("/ListeEvenements.jsp").forward(request, response);	
	}
	
}
