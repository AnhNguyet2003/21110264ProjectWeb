package murach.email;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/test")
public class TestServlet extends HttpServlet  {

    /**
	 * 
	 */
	private static final long serialVersionUID = -9041203108972949519L;
	@Override
    protected void doPost(HttpServletRequest request, 
                          HttpServletResponse response) 
                          throws ServletException, IOException {
    	
		response.setContentType("text/html");        
        PrintWriter wr = response.getWriter();        
        try {
            wr.println("<h1>TestServlet Post</h1>");
        } 
        finally {
            wr.close();
        }
    }    
    @Override
    protected void doGet(HttpServletRequest request, 
                         HttpServletResponse response) 
                         throws ServletException, IOException {
    	response.setContentType("text/html");        
        PrintWriter wr = response.getWriter();        
        try {
            wr.println("<h1>TestServlet Get</h1>");
        } 
        finally {
            wr.close();
        }
    		   
    }   
}
