package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Categorybean;
import bo.Categorybo;

/**
 * Servlet implementation class htloaisanpham
 */
@WebServlet("/htloaisanpham")
public class htloaisanpham extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public htloaisanpham() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		 	response.setCharacterEncoding("utf-8");
			request.setCharacterEncoding("utf-8");
			Categorybo lbo = new Categorybo();
	 	String ml= request.getParameter("ml");
	 	String key= request.getParameter("txtfind");
	 	ArrayList<Categorybean> dsCategory=lbo.getloai();
	    if(ml!=null) dsCategory= lbo.Tim(null, key);
	    else
	   		if(key!=null) dsCategory=lbo.Tim(dsCategory, key);
	    request.setAttribute("dsCategory", dsCategory);
	    RequestDispatcher rd= request.getRequestDispatcher("lspadmin.jsp");
	    rd.forward(request, response);
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
