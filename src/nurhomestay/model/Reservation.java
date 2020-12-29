package nurhomestay.model;

public class Reservation {
	private int reserveid;
	private DateTime reservedate;
	private DateTime checkindatetime;
	private DateTime checkoutdatetime;
	private int custid;
	private int staffid;
	private int homestayid;
	
	public Reservation() {
		super();
	}
	
	
	public Reservation(DateTime reservedate, DateTime checkindatetime, DateTime checkoutdatetime,
			int custid, int staffid, int homestayid) {
		super();
		this.reservedate = reservedate;
		this.checkindatetime = checkindatetime;
		this.checkoutdatetime = checkoutdatetime;
		this.custid = custid;
		this.staffid = staffid;
		this.homestayid = homestayid;
	}
	
	public int getReserveid() {
		return reserveid;
	}
	public void setReserveid(int reserveid) {
		this.reserveid = reserveid;
	}
	public DateTime getReservedate() {
		return reservedate;
	}
	public void setReservedate(DateTime reservedate) {
		this.reservedate = reservedate;
	}
	public DateTime getCheckindatetime() {
		return checkindatetime;
	}
	public void setCheckindatetime(DateTime checkindatetime) {
		this.checkindatetime = checkindatetime;
	}
	public DateTime getCheckoutdatetime() {
		return checkoutdatetime;
	}
	public void setCheckoutdatetime(DateTime checkoutdatetime) {
		this.checkoutdatetime = checkoutdatetime;
	}
	public int getCustid() {
		return custid;
	}
	public void setCustid(int custid) {
		this.custid = custid;
	}
	public int getStaffid() {
		return staffid;
	}
	public void setStaffid(int staffid) {
		this.staffid = staffid;
	}
	public int getHomestayid() {
		return homestayid;
	}
	public void setHomestayid(int homestayid) {
		this.homestayid = homestayid;
	}
	
	
	
	
}
