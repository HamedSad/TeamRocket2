package test;

import java.io.IOException;



import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;



/**

 * Servlet implementation class BridgeInscriLet

 */

@WebServlet("/BridgeInscriLet")

public class BridgeInscriLet extends HttpServlet {

	private static final long serialVersionUID = 1L;

       

    /**

     * @see HttpServlet#HttpServlet()

     */

    public BridgeInscriLet() {

        super();

        // TODO Auto-generated constructor stub

    }



	/**

	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)

	 */

    protected void doGet(HttpServletRequest request, HttpServletResponse response)

            throws ServletException, IOException {

         

            HttpSession session = request.getSession(false);

         

            if (session.getAttribute("idUser") == null) {

    

                RequestDispatcher rd = request.getRequestDispatcher("/Register.jsp");

                rd.forward(request, response);



            } else {

                int idEvent =  Integer.parseInt(request.getParameter("idEvent"));

                System.out.println("je trace idEvent depuis BridgeInscriLet :" + idEvent);

                EventCrudDao affichageEventSimple = new EventCrudDao();

                

                request.setAttribute("event", affichageEventSimple.getEventById(idEvent));



                RequestDispatcher rd = request.getRequestDispatcher("/InscriEvent.jsp");

                rd.forward(request, response);

            }

    }



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // TODO Auto-generated method stub

        doGet(request, response);

        

        

    }

}