package nurhomestay.model;


import java.time.LocalDate;

public class Onlinepayment extends Payment{
	private String accName;
	private String bankName;
	
	public Onlinepayment() {
		super();
	}
	
	public Onlinepayment(int payment_id, LocalDate payment_date, double paymentAmount, String paymentDesc, String accName, String bankName) {
		super(payment_id, payment_date, paymentAmount, paymentDesc);
		this.accName = accName;
		this.bankName = bankName;
	}

	public String getAccName() {
		return accName;
	}

	public void setAccName(String accName) {
		this.accName = accName;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	
	
}