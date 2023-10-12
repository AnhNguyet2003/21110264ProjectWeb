package murach.email;

import java.io.*;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import murach.business.User;
import murach.data.UserIO;

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
    	
    	HttpSession session = request.getSession();

    	 GregorianCalendar currentDate = new GregorianCalendar();
         int currentYear = currentDate.get(Calendar.YEAR);
         request.setAttribute("currentYear", currentYear);
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

            // store data in User object and save User object in db
            User user = new User(firstName, lastName, email);
            //UserDB.insert(user);
            
            // set User object in request object and set URL
            request.setAttribute("user", user);
            url = "/thanks.jsp";   // the "thanks" page
        }
        
        String path = getServletContext().getRealPath("WEB-INF/EmailList.txt");
        ArrayList<User> users = UserIO.getUsers(path);
		session.setAttribute("users", users);
        
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
