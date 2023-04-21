package Svl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

public class svlResultado extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public svlResultado() {
        super();
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("text/html;charset=UTF-8");
    	request.setCharacterEncoding("UTF-8");
    	HttpSession session = request.getSession();
    	Dao.OnpeDao daoonpe= new Dao.OnpeDao();
    	String id =request.getParameter("id");
    	String idDepartamento =request.getParameter("cboDepartamento");
    	String idProvincia = request.getParameter("cboProvincia");
    	String idDistrito = request.getParameter("cboDistrito");
    	
    	Object data =null;
    	
    	if(idDepartamento ==null)idDepartamento = "-1";
    	if(idProvincia ==null)idProvincia = "-1";
    	if(idDistrito ==null)idDistrito = "-1";

    	
    	if(idDepartamento.equals("-1")) {
    		idProvincia="-1";
    		session.setAttribute("provincias",null);
    	}
    	if( idProvincia.equals("-1")) {
    		idDistrito="-1";
    		session.setAttribute("distritos",null);
    	}
    	
    	
    	if(id==null && session.getAttribute("departamentos")==null) {    		    		
    		session.setAttribute("departamentos",daoonpe.getDepartamentos(1,25));
    	}
    	if(!idDepartamento.equals("-1")) 
    	session.setAttribute("provincias",daoonpe.getProvincias(idDepartamento));
    	
    	if(!idProvincia.equals("-1")) 
        	session.setAttribute("distritos",daoonpe.getDistritos(idProvincia));

		
    	String sDPD="";
    	if(idDepartamento != null) sDPD = idDepartamento; 
    	if(idProvincia != null)sDPD += "," +idProvincia; 
    	if(idDistrito != null)sDPD += "," +idDistrito;

		session.setAttribute("id", id);
    	session.setAttribute("data", data);
    	session.setAttribute("dpd", sDPD);
		
		response.sendRedirect("Resultado.jsp");
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		processRequest(request, response);
	}

}
