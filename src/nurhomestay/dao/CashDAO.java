package nurhomestay.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import nurhomestay.connection.ConnectionManager;
import nurhomestay.model.Cash;

public class CashDAO{
	static Connection currentCon = null;
	static ResultSet rs = null; 
	static PreparedStatement ps=null;
	static Statement stmt=null;
	static int paymentid;
	static String invoice;
	
	public void addCash(int paymentid) {
		
    	try {
    		invoice = "NH" + paymentid;
    		currentCon = ConnectionManager.getConnection();
    		ps=currentCon.prepareStatement("insert into cash (payment_id, noinvoice)values(?,?)");
    		ps.setInt(1, paymentid);
    		ps.setString(2, invoice);
    		ps.executeUpdate();
    	
    		System.out.println("Succesful add!!!");
            
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
	
	public Cash getCashByPaymentId(int payment_id) {
		Cash paid = new Cash();
		
		try {
			currentCon = ConnectionManager.getConnection();
			stmt = currentCon.createStatement();
			
			String q = "select * from cash where payment_id = " + payment_id;
		    ResultSet rs = stmt.executeQuery(q);
		    System.out.println(q);
		    
		    if (rs.next()) {          
		          
		          paid.setInvoice(rs.getString("invoice"));
		          System.out.println("muncul"+rs.getString("invoice"));
		          
		      }
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
		return paid;
	}
}
