package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.accountbean;
import bo.accountbo;

/**
 * Servlet implementation class ktdkadminController
 */
@WebServlet("/ktdkadminController")
public class ktdkadminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ktdkadminController() {
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
			  
			  	
				String TenDN=request.getParameter("user");
				String Matkhau=request.getParameter("pass");
				String isAdmin=request.getParameter("isAdmin");
				accountbo kh=new accountbo();
				accountbean checkkh=kh.ktkh(TenDN);
				if (checkkh==null) {
					kh.getkh(Matkhau, isAdmin);
					request.setAttribute("TenDN", TenDN);
				    request.setAttribute("Matkhau", Matkhau);
					RequestDispatcher rd= request.getRequestDispatcher("adminKHController");
				    rd.forward(request, response);
				}
				else {
					
					RequestDispatcher rd= request.getRequestDispatcher("dangkyadmin.jsp");
				    rd.forward(request, response);
				}
				
				
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
