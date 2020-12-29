package nurhomestay.model;

import java.time.LocalDate;

public class Cash extends Payment{
	private double cashTendered;
	private String noInvoice;
	private String receive_Ic;
	
	public Cash() {
		super();
	}
	
	public Cash(int payment_id, LocalDate payment_date, double paymentAmount, String paymentDesc, double cashTendered, String noInvoice, String receive_Ic) {
		super(payment_id, payment_date, paymentAmount, paymentDesc);
		this.cashTendered = cashTendered;
		this.noInvoice = noInvoice;
		this.receive_Ic = receive_Ic;
	}
	
	public double getCashTendered() {
		return cashTendered;
	}
	
	public void setCashTendered(double cashTendered) {
		this.cashTendered = cashTendered;
	}
	
	public String getNoInvoice() {
		return noInvoice;
	}
	
	public void setNoInvoice(String noInvoice) {
		this.noInvoice = noInvoice;
	}
	
	public String getReceive_Ic() {
		return receive_Ic;
	}
	
	public void setReceive_Ic(String receive_Ic) {
		this.receive_Ic = receive_Ic;
	}
	
	
	
}