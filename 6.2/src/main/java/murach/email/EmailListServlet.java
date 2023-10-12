package murach.email;

import java.io.*;
import java.time.Year;
import java.util.Calendar;
import java.util.GregorianCalendar;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import murach.business.User;

@WebServlet(urlPatterns ={"/emailList","/survey","/email/*"})
public class EmailListServlet extends HttpServlet  {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6873855210751614338L;
	@Override
    protected void doPost(HttpServletRequest request, 
                          HttpServletResponse response) 
                          throws ServletException, IOException {
    	
    	response.setContentType("text/html");
    	request.setCharacterEncoding("UTF-8");
    	response.setCharacterEncoding("UTF-8");


        String url = "/index.jsp";

        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }
        // perform action and set URL to appropriate page
        if (action.equals("join")) {
            url = "/index.jsp";    // the "join" page
        }
        else if (action.equals("add")) {                
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            String dateOfbirth = request.getParameter("dateOfbirth");
            String heardFrom = request.getParameter("my_radio");
            String updates = request.getParameter("cb");
            String contactVia = request.getParameter("contact-method");

            // store data in User object and save User object in db
            User user = new User(firstName, lastName, email,dateOfbirth,heardFrom,updates,contactVia);
            //UserDB.insert(user);
            
            // set User object in request object and set URL
            request.setAttribute("user", user);
            url = "/Survey.jsp";   // the "thanks" page
        }
		
        // forward request and response objects to specified URL
        getServletContext()
            .getRequestDispatcher(url)
            .forward(request, response);
    }    
    @Override
    protected void doGet(HttpServletRequest request, 
                         HttpServletResponse response) 
                         throws ServletException, IOException {
        doPost(request, response);
    }   
}
