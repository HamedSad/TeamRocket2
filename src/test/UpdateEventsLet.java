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

        // on récupère la session si elle existe encore

        HttpSession session = request.getSession(false);        
        if (session.getAttribute("idUser") == null) {
            // si la session n'existe plus = false, ces attributs seront donc de valeur =
            // null
            // le cas échéant l'application vous raménera à la home page

            RequestDispatcher rd = request.getRequestDispatcher("/Register.jsp");
            rd.forward(request, response);

        } else {

            // je récupère l'id de l'évènement envoyé depuis CreationeventsLet doPost grace
            // à sa methode création
            // ou depuis EventUpdateLet2 pour instaurer un systeme de maj avec renvoi d'informations en boucle
            //tant que l'utilisateur restera sur la page de EventUpdate.jsp
            int idEventUp = (int) request.getAttribute("idEvent");
            System.out.println(idEventUp);
            EventCrudDao eventUpDao = new EventCrudDao();

            // je génère l'event à partir de sa clef primaire idEvent grâce à la méthode
            // getEventById

            //String upTest = (String) request.getAttribute("upTest");
            //request.setAttribute("Success", upTest);

            // cette string est récupérée depuis la servlet EventUpdateLet2 quand au moins une mise
            //à jour a déjà été faite pour afficher un message de succes

            request.setAttribute("eventUp", eventUpDao.getEventById(idEventUp)); 
            // je renvoie l' event avec ses valeurs d'attributs sur la page de mise à jour
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