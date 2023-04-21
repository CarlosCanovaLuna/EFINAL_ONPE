package Svl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import Dao.OnpeDao;

public class svlPresidencial extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    public svlPresidencial() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("text/html;charset=UTF-8");
    	request.setCharacterEncoding("UTF-8");
    	HttpSession session = request.getSession();
    	Object data = null;
    	
    	Dao.OnpeDao daoonpe= new Dao.OnpeDao();
    	
    	
    	data = daoonpe.getResumenGeneralCanova();
		session.setAttribute("data", data);
		
		response.sendRedirect("Presidenciales.jsp");
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

}
