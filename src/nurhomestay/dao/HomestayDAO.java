package nurhomestay.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import nurhomestay.connection.ConnectionManager;
import nurhomestay.model.Homestay;


public class HomestayDAO {
	static Connection currentCon = null;
	static ResultSet rs = null; 
	static PreparedStatement ps=null;
	static Statement stmt=null;
	static int homeid;
	static String home_name, home_address, home_desc;
	static float home_price;
	
	public Homestay getHomestay(Homestay homestay) {
		homeid = homestay.getHomestayId();

        String searchQuery = "select * from homestay where homestayid='" + homeid + "'";

        try {
            currentCon = ConnectionManager.getConnection();
            stmt = currentCon.createStatement();
            rs = stmt.executeQuery(searchQuery);
            boolean more = rs.next();
            
            System.out.println(searchQuery);

            // if subject exists set the isValid variable to true
            if (more) {
                homestay.setValid(true);
           	}
           
            else if (!more) {            	
            	homestay.setValid(false);
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

        return homestay;
	}
	
	public List<Homestay> getAllHomestay() {
		List<Homestay> homestays = new ArrayList<Homestay>();
		  
		  try {
		  	currentCon = ConnectionManager.getConnection();
		  	stmt = currentCon.createStatement();
		  
		  	  String q = "select * from homestay";
		      ResultSet rs = stmt.executeQuery(q);
		      
		      while (rs.next()) {
		          Homestay homestay = new Homestay();		          
		          
		          homestay.setHomestayId(rs.getInt("homestayId"));
		          homestay.setHome_name(rs.getString("home_name"));
		          homestay.setHome_address(rs.getString("home_address"));
		          homestay.setHome_desc(rs.getString("home_desc"));
		          homestay.setHome_price(rs.getFloat("home_price"));
		          homestays.add(homestay);
		      }
		  } catch (SQLException e) {
		      e.printStackTrace();
		  }

		  return homestays;
	}
}