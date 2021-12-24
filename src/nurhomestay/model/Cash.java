package nurhomestay.model;

import java.util.Date;

public class Cash extends Payment{
	private String invoice;
	public boolean valid;
	
	public Cash() {
		super();
	}
	
	public Cash(int payment_id, Date payment_date, double paymentAmount,  String invoice, String status) {
		super(payment_id, payment_date, paymentAmount, status);
	}
	
	public String getInvoice() {
		return invoice;
	}

	public void setInvoice(String invoice) {
		this.invoice = invoice;
	}

	public boolean isValid() {
		return valid;
	}

	public void setValid(boolean valid) {
		this.valid = valid;
	}
}