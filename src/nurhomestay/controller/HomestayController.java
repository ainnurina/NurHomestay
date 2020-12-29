package nurhomestay.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nurhomestay.dao.HomestayDAO;

/**
 * Servlet implementation class HomestayController
 */
@WebServlet("/HomestayController")
public class HomestayController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HomestayDAO daoHomestay;
	String forward="";
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomestayController() {
        super();
        daoHomestay = new HomestayDAO();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		
		if (action.equalsIgnoreCase("listallhomestay")) {
			forward = "index.jsp";
			request.setAttribute("homestays", daoHomestay.getAllHomestay());
		}
		RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
