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

@WebServlet("/EventLet")
public class EventLet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EventLet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	       System.out.println("verif1 servlet");
	        HttpSession session = request.getSession(false); 
		       System.out.println("verif2 servlet");
	        if (session.getAttribute("idUser") == null) {
	 
	            RequestDispatcher rd = request.getRequestDispatcher("/Register.jsp"); 
	            rd.forward(request, response);

	        } else {  
	        	int idEvent =  Integer.parseInt(request.getParameter("idEventPass"));
	        	System.out.println(idEvent);
	        	EventCrudDao affichageEventSimple = new EventCrudDao();
	        	
	            request.setAttribute("event", affichageEventSimple.getEventById(idEvent));            

	            RequestDispatcher rd = request.getRequestDispatcher("/Event.jsp");
	            rd.forward(request, response);
	        }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
	}
}