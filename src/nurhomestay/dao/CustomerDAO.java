package nurhomestay.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import nurhomestay.connection.ConnectionManager;
import nurhomestay.model.Customer;

public class CustomerDAO {
	
	static Connection currentCon = null;
	static ResultSet rs = null; 
	static PreparedStatement ps=null;
	static Statement stmt=null;
	static int custId;
	static String username, cust_name, cust_phoneNo, cust_email, address, password;
	
	public Customer getCustomer(Customer customer) {
		custId = customer.getCustId();

        String searchQuery = "select * from customer where custid='" + custId + "'";

        try {
            currentCon = ConnectionManager.getConnection();
            stmt = currentCon.createStatement();
            rs = stmt.executeQuery(searchQuery);
            boolean more = rs.next();
            
            System.out.println(searchQuery);

            // if customer exists set the isValid variable to true
            if (more) {
                customer.setValid(true);
           	}
           
            else if (!more) {            	
            	customer.setValid(false);
            }
           
        }

        catch (Exception ex) {
            System.out.println("Log In failed: An Exception has occurred! " + ex);
        }

        finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (Exception e) {
                }
                rs = null;
            }

            if (stmt != null) {
                try {
                    stmt.close();
                } catch (Exception e) {
                }
                stmt = null;
            }

            if (currentCon != null) {
                try {
                    currentCon.close();
                } catch (Exception e) {
                }

                currentCon = null;
            }
        }

        return customer;
	}
	
	public void add(Customer customer) {
		custId = customer.getCustId();
        username = customer.getUsername();
        cust_name = customer.getCust_name();
        cust_phoneNo = customer.getCust_phoneNo();
        cust_email = customer.getCust_email();
        address = customer.getAddress();
        password = customer.getPassword();
       
    	try {
    		currentCon = ConnectionManager.getConnection();
    		ps=currentCon.prepareStatement("insert into customer (custid, username, cust_name, cust_phoneno, cust_address, cust_email, cust_password)values(?,?,?,?,?,?,?)");
    		ps.setInt(1, custId);
    		ps.setString(2,username);
    		ps.setString(3,cust_name);
    		ps.setString(4,cust_phoneNo);
    		ps.setString(5,cust_email);
    		ps.setString(6, address);
    		ps.setString(7,password);
    		ps.executeUpdate();
    	
    		System.out.println("Cust ID is " + custId);	
			System.out.println("Username is " + username);
    		System.out.println("Customer name is " + cust_name);
    		System.out.println("Customer Phone Number is " + cust_phoneNo);
			System.out.println("Email is " + cust_email);
			System.out.println("Address is " + address);
    		System.out.println("Password is " + password);
            
    	}

    	catch (Exception ex) {
    		System.out.println("failed: An Exception has occurred! " + ex);
    	}

    	finally {
    		if (ps != null) {
    			try {
    				ps.close();
    			} catch (Exception e) {
    			}
    			ps = null;
    		}
    		
    		if (currentCon != null) {
    			try {
    				currentCon.close();
    			} catch (Exception e) {
    			}
    			currentCon = null;
    		}
    	}
		
		
	}

}
