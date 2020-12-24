package nurhomestay.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nurhomestay.dao.CustomerDAO;
import nurhomestay.model.Customer;



/**
 * Servlet implementation class CustomerController
 */
@WebServlet("/CustomerController")
public class CustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CustomerDAO daoCustomer;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerController() {
        super();
        daoCustomer = new CustomerDAO();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String custId = request.getParameter("custId");
		
		int c_id = Integer.parseInt(custId);
		if (c_id != 0) {
			System.out.println("tak dpat id lah"+c_id);
		}
		
		String username = request.getParameter("username");
		String cust_name = request.getParameter("cust_name");
		String cust_phoneNo = request.getParameter("cust_phoneNo");
		String cust_email = request.getParameter("cust_email");
		String address = request.getParameter("address");
		String password = request.getParameter("password");
		
		Customer customer = new Customer(c_id, username, cust_name, cust_phoneNo, cust_email, address, password);				
		
		customer = daoCustomer.getCustomer(customer);
	
		if(!customer.isValid()){			
			System.out.println("inserting customer");
        	daoCustomer.add(customer);       	
        	response.sendRedirect("signup.jsp");
        }
	}

}
