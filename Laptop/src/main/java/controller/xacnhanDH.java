package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bo.detailed_billbo;

/**
 * Servlet implementation class xacnhanDH
 */
@WebServlet("/xacnhanDH")
public class xacnhanDH extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xacnhanDH() {
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
				String pid=request.getParameter("id");
			   String damua="True";
			   Long kt=Long.parseLong(request.getParameter("damua"));
			  detailed_billbo cthd1=new detailed_billbo();
			  	if (request.getParameter("xacnhan")!=null)
				cthd1.xacnhancthd(pid, damua);
			  	else if (request.getParameter("huy")!=null&&kt==0) cthd1.xoacthd(pid);
				RequestDispatcher rd= request.getRequestDispatcher("htdonhang");
			    rd.forward(request, response);
	
			}	
		 catch (Exception e) {
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
