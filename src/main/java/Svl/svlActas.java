package Svl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet implementation class svlActas
 */
public class svlActas extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public svlActas() {
        super();
        
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
    	
    	Object data =null;
    	
    	if(idDepartamento ==null)idDepartamento = "-1";
    	if(idProvincia ==null)idProvincia = "-1";
    	if(idDistrito ==null)idDistrito = "-1";
    	if(idLocalVotacion == null) idLocalVotacion="-1";
    	
    	if(idDepartamento.equals("-1")) {
    		idProvincia="-1";
    		session.setAttribute("provincias",null);
    	}
    	if( idProvincia.equals("-1")) {
    		idDistrito="-1";
    		session.setAttribute("distritos",null);
    	}
    	if( idDistrito.equals("-1")) {
    		idLocalVotacion="-1";
    		session.setAttribute("LocalVotacion",null);
    	}
    	if(idLocalVotacion.equals("-1")) {
    		session.setAttribute("ListaMesas",null);
    	}
    	
    	
    	if(id==null && session.getAttribute("departamentos")==null) {    		    		
    		session.setAttribute("departamentos",daoonpe.getDepartamentos(1,25));
    	}
    	if(!idDepartamento.equals("-1")) 
    	session.setAttribute("provincias",daoonpe.getProvincias(idDepartamento));
    	
    	if(!idProvincia.equals("-1")) 
        	session.setAttribute("distritos",daoonpe.getDistritos(idProvincia));
    	
    	if(!idDistrito.equals("-1")) 
        	session.setAttribute("LocalVotacion",daoonpe.getLocalesVotacion(idDistrito));
    	
    	if(!idLocalVotacion .equals("-1")) 
        	session.setAttribute("ListaMesas",daoonpe.getGruposVotacion(idLocalVotacion));
    		
    	
    	if(nroMesa!=null) {
    		id=nroMesa;
    		data = daoonpe.getGrupoVotacion(nroMesa);
    	}
    	String sDPD="";
    	if(idDepartamento != null) sDPD = idDepartamento; 
    	if(idProvincia != null)sDPD += "," +idProvincia; 
    	if(idDistrito != null)sDPD += "," +idDistrito;
    	if(idLocalVotacion != null)sDPD += "," +idLocalVotacion;
    	
    	
    		
    	
    
    	session.setAttribute("id", id);
    	session.setAttribute("data", data);
    	session.setAttribute("dpd", sDPD);
    	
		response.sendRedirect("actas.jsp");
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

}
