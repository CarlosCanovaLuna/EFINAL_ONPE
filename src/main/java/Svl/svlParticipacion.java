package Svl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import Dao.OnpeDao;

/**
 * Servlet implementation class Parcticipacion
 */
public class svlParticipacion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public svlParticipacion() {
        super();
     
    }

	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		Dao.OnpeDao daoonpe= new Dao.OnpeDao();
		
		String id = request.getParameter("id");
		String sDPD = null ,sAmbito = null;
	    Object data = null,totales = null;
		
		if ( id != null ) {			
			String aID[]= id.split(",");
			int tID = aID.length;
			boolean bNacional = aID[0].equals("Nacional");
			
			if(tID==1) sDPD=bNacional ?"DEPARTAMENTO":"CONTINENTE";
			else if (tID==2) sDPD=bNacional ?"PROVINCIA":"PAIS";
			else if (tID==3) sDPD=bNacional ?"DISTRITO":"CIUDAD";
			//sDPD=aID.length ==1 && aID[1].equals("Nacional")?"DEPARTAMENTO" : "CONTINENTE";
			//sDPD=aID.length ==2 && aID[2].equals("Nacional")?"PROVINCIA" : "PAIS";
			//sDPD=aID.length ==3 && aID[3].equals("Nacional")?"DISTRITO" : "CIUDAD";		
			//session.setAttribute("DPD" , sDPD);
			
			//if(aID.length == 1)	data = daoonpe.getVotos( id.equals("Nacional") ? 1 : 26, id.equals("Nacional") ? 25 : 30 );
			//else if(aID.length == 2) data = daoonpe.getVotosDepartamento(aID[1]);
			//else if(aID.length == 3) data = daoonpe.getVotosProvincia(aID[2]);
			
			if(tID ==1) data=daoonpe.getVotos(bNacional ? 1 :26,bNacional ?25:30);
			else if (tID ==2) data= daoonpe.getVotosDepartamento(aID[1]);
			else if (tID ==3) data= daoonpe.getVotosProvincia(aID[2]);
			
			sAmbito = "Ambito : " + aID[0];
			
			if(tID > 1) sAmbito += "<br/>" +(bNacional ? "Departamento" : "Continente") + " :"  +aID[1];
			if(tID > 2) sAmbito += "<br/>" +(bNacional ? "Provincia" : "Pais") + " :"  +aID[2];
			if(tID > 3) sAmbito += "<br/>" +(bNacional ? "Distrito" : "Ciudad") + " :"  +aID[3];

			//if(aID.length>1) sAmbito += "<br/>" +(aID[0].equals("Nacional")? "Departamento" : "Continente")+ " : "+aID[1];
			//if(aID.length>1) sAmbito += "<br/>" +(aID[0].equals("Nacional")? "Provincia" : "Pais")+ " : "+aID[2];
			//if(aID.length>1) sAmbito += "<br/>" +(aID[0].equals("Nacional")? "Distrito" : "Ciudad")+ " : "+aID[3];
		}
		
		session.setAttribute("id", id);
		session.setAttribute("DPD", sDPD);
		session.setAttribute("Ambito", sAmbito);
		session.setAttribute("data", data);
		session.setAttribute("totales", totales);
		
		
		response.sendRedirect("Participacion.jsp");
	}
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			processRequest(request, response);
		}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

}
