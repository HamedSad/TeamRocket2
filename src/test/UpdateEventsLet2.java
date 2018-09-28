package test;

import java.io.IOException;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/UpdateEventsLet2")

public class UpdateEventsLet2 extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public UpdateEventsLet2() {

		super();

		// TODO Auto-generated constructor stub

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// TODO Auto-generated method stub

		response.getWriter().append("Served at: ").append(request.getContextPath());

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// TODO Auto-generated method stub

		try { // on récupère la session si elle existe encore

			HttpSession session = request.getSession(false);
			if (session.getAttribute("idUser") == null) {

				// si la session n'existe plus = false, ces attributs seront donc de valeur =
				// null
				// le cas échéant l'application vous raménera à la home page

				RequestDispatcher rd = request.getRequestDispatcher("/Register.jsp");

				rd.forward(request, response);

			} else {
				String dateEvent = request.getParameter("date");
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				Date jour;
				jour = format.parse(dateEvent);
				java.sql.Date jourSql = new java.sql.Date(jour.getTime());
				System.out.println(jourSql);

				String titre = request.getParameter("titre");
				String type = request.getParameter("type");
				String heuredebut = request.getParameter("heureDebut");
				String lieu = request.getParameter("lieu");
				String duree = request.getParameter("duree");
				int capaciteMax = Integer.parseInt(request.getParameter("capacite"));
				Double mo = Double.valueOf(request.getParameter("montant"));
				String description = request.getParameter("textEve");
				String handi = request.getParameter("accesHandicape");
				String urlImage = request.getParameter("urlImage");
				int idcrea = (int) session.getAttribute("idUser");
				int idEvent = Integer.parseInt(request.getParameter("idEvent"));

				BeanEvent event = new BeanEvent();

				event.setId(idEvent);
				event.setTitre(titre);
				event.setTypeEve(type);
				System.out.println("avant set date");
				event.setDateEve(jourSql);
				System.out.println("apres set date");
				event.setLieu(lieu);
				event.setHeureDebut(heuredebut);
				event.setDuree(duree);
				event.setCapMax(capaciteMax);
				event.setMontantObjectif(mo);
				event.setTextEve(description);
				event.setAccesHandicap(handi);
				event.setImage(urlImage);
				event.setIdUser(idcrea);

				EventCrudDao update = new EventCrudDao();

				update.updateEvent(event);

				request.setAttribute("idEvent", idEvent);
				request.setAttribute("upTest",
						"Félicitations! Vos informations on été prises en compte. Votre évènement est disponible.");

				RequestDispatcher rd = request.getRequestDispatcher("/UpdateEventsLet");

				rd.forward(request, response);
			}

		} catch (ParseException e) {
			e.printStackTrace();

		}
	}

}