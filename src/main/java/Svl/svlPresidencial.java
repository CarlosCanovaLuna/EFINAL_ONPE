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
    	Dao.OnpeDao daoonpe= new Dao.OnpeDao();
    	
    	String id =request.getParameter("id");
    	String nroMesa =request.getParameter("nroMesa");
    	String idDepartamento =request.getParameter("cboDepartamento");
    	String idProvincia = request.getParameter("cboProvincia");
    	String idDistrito = request.getParameter("cboDistrito");
    	String idLocalVotacion = request.getParameter("cboLocalVotacion");
		Object data	=null;
    	
		if ( idDepartamento == null ) idDepartamento = "-1";
		if (id == null) {
			data =daoonpe.getResumen_CanovaLuna();
		}
		
		if ( id == null && session.getAttribute("departamentos") == null )
			session.setAttribute("departamentos", daoonpe.getDepartamentos(1,25) );
		
		if (id == "Data") {
			session.setAttribute("Data",daoonpe.getResumen_CanovaLuna());
		}
		if (id == "Tipo") {
			session.setAttribute("Data",daoonpe.getResumen_CanovaLuna());
		}
		
		String sDPD = idDepartamento + "," + idProvincia + "," + idDistrito + "," + idLocalVotacion;
		session.setAttribute("Data", data);
		session.setAttribute("id", id);
		
		response.sendRedirect("Presidenciales.jsp");
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

}
