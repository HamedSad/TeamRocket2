package test;

import java.util.Date;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.BeanEvent;
import test.EventCrudDao;

@WebServlet("/CreationEventsLet")
public class CreationEventsLet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public CreationEventsLet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		/*String dateEvent = request.getParameter("date");
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date jour = null;
		try {
			jour = format.parse(dateEvent);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}*/
		
		String titre = request.getParameter("titre");		
		String type = request.getParameter("type events");
		//date jour = request.getPrameter("date");
		String heureDebut = request.getParameter("heureDebut");
		String lieu = request.getParameter("lieu");
		String duree =  request.getParameter("duree");
		int capaciteMax = Integer.parseInt(request.getParameter("capacite"));
		Double mo = Double.valueOf(request.getParameter("montant"));
		String description = request.getParameter("descriptionEve");
		String handi = request.getParameter("accesHandicape");
		String urlImage = request.getParameter("urlImage");
		
		BeanEvent event = new BeanEvent();
		
		event.setTitre(titre);
		event.setTypeEve(type);
		//event.setDateEve(jour);
		event.setHeureDebut(heureDebut);
		event.setLieu(lieu);
		event.setDuree(duree);
		event.setCapMax(capaciteMax);
		event.setMontantObjectif(mo);
		event.setTextEve(description);
		event.setAccesHandicap(handi);
		event.setImage(urlImage);
				
		EventCrudDao insertion = new EventCrudDao();
		EventCrudDao affichageEvents = new EventCrudDao();
		
		insertion.addEvent(event);
		
		request.setAttribute("events", affichageEvents.allEvents());
		request.setAttribute("ConfirmationCreationEvenement", "L'événement a bien été créé");
		this.getServletContext().getRequestDispatcher("/ListeEvenements.jsp").forward(request, response);	
		
	}

}
