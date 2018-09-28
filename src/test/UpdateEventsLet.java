package test;

import javax.servlet.http.HttpSession;
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

@WebServlet("/UpdateEventsLet")

public class UpdateEventsLet extends HttpServlet {

    private static final long serialVersionUID = 1L;


    public UpdateEventsLet() {

        super();

        // TODO Auto-generated constructor stub

    }   

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("On check si on passe dans doGet");

        // on r�cup�re la session si elle existe encore

        HttpSession session = request.getSession(false);        
        if (session.getAttribute("idUser") == null) {
            // si la session n'existe plus = false, ces attributs seront donc de valeur =
            // null
            // le cas �ch�ant l'application vous ram�nera � la home page

            RequestDispatcher rd = request.getRequestDispatcher("/Register.jsp");
            rd.forward(request, response);

        } else {

            // je r�cup�re l'id de l'�v�nement envoy� depuis CreationeventsLet doPost grace
            // � sa methode cr�ation
            // ou depuis EventUpdateLet2 pour instaurer un systeme de maj avec renvoi d'informations en boucle
            //tant que l'utilisateur restera sur la page de EventUpdate.jsp
            int idEventUp = (int) request.getAttribute("idEvent");
            System.out.println(idEventUp);
            EventCrudDao eventUpDao = new EventCrudDao();

            // je g�n�re l'event � partir de sa clef primaire idEvent gr�ce � la m�thode
            // getEventById

            //String upTest = (String) request.getAttribute("upTest");
            //request.setAttribute("Success", upTest);

            // cette string est r�cup�r�e depuis la servlet EventUpdateLet2 quand au moins une mise
            //� jour a d�j� �t� faite pour afficher un message de succes

            request.setAttribute("eventUp", eventUpDao.getEventById(idEventUp)); 
            // je renvoie l' event avec ses valeurs d'attributs sur la page de mise � jour
            RequestDispatcher rd = request.getRequestDispatcher("/EventUpdate.jsp");
            rd.forward(request, response);
        }

    } 

    protected void doPost(HttpServletRequest request, HttpServletResponse response)

            throws ServletException, IOException {

        // TODO Auto-generated method stub

        doGet(request, response);

            }

    }