package test;

import java.util.Date;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import test.BeanEvent;
import test.EventCrudDao;

@WebServlet("/CreationEventsLet")
public class CreationEventsLet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CreationEventsLet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			// on r�cup�re la session si elle existe encore
			HttpSession session = request.getSession(false);
			if (session.getAttribute("idUser") == null) {
				// si la session n'existe plus = false, ces attributs seront donc de valeur =
				// null
				// le cas �ch�ant l'application vous ram�nera � la home page

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
				String type = request.getParameter("typeEve");
				String heuredebut = request.getParameter("heureDebut");
				String lieu = request.getParameter("lieu");
				String duree = request.getParameter("duree");
				int capaciteMax = Integer.parseInt(request.getParameter("capacite"));
				Double mo = Double.valueOf(request.getParameter("montant"));
				String description = request.getParameter("textEve");
				String handi = request.getParameter("accesHandicape");
				String urlImage = request.getParameter("urlImage");
				int idCrea = (int) session.getAttribute("idUser");
				BeanEvent event = new BeanEvent();

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
				event.setIdUser(idCrea);

				EventCrudDao insertion = new EventCrudDao();

				int idEvent = insertion.addEvent(event);
				
				System.out.println("�a passe");

				if (idEvent > 0) {

					request.setAttribute("idEvent", idEvent);
					request.setAttribute("ConfirmationCreationEvent", "L'�v�nement a bien �t� enregistr�");
					RequestDispatcher rd = request.getRequestDispatcher("/UpdateEventsLet");
					rd.forward(request, response);

				} else {
					request.setAttribute("error", "erreur d'update");
					RequestDispatcher rd = request.getRequestDispatcher("/CreationEvenement.jsp");
					rd.forward(request, response);

				}
			}

		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
}
