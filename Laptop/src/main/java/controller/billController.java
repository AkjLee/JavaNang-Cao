package controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import bean.clientbean;
import bo.billbo;


/**
 * Servlet implementation class hoadonController
 */
@WebServlet("/billController")
public class billController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public billController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8"); 
		try {
			HttpSession session= request.getSession();
			clientbean kh=(clientbean)session.getAttribute("dn");
			
			  	String cliID=kh.getCliID();
//			  	long cliID1=Long.parseLong(cliID);
			  if(kh!=null) {
			  	long millis=System.currentTimeMillis(); 
			  	java.sql.Date NgayMua=new java.sql.Date(millis);
			  	
				String damua="False";
				billbo hd1= new billbo();
				hd1.getbill(cliID, NgayMua, damua);
				
				RequestDispatcher rd= request.getRequestDispatcher("detailed_billController");
			    rd.forward(request, response);}
			  
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
