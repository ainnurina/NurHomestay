package nurhomestay.model;

import java.time.LocalDate;

public class Payment {
	private int payment_id;
	private LocalDate payment_date;
	private double paymentAmount;
	private String paymentDesc;
	
	public Payment() {
		super();
	}

	public Payment(int payment_id, LocalDate payment_date, double paymentAmount, String paymentDesc) {
		super();
		this.payment_id = payment_id;
		this.payment_date = payment_date;
		this.paymentAmount = paymentAmount;
		this.paymentDesc = paymentDesc;
	}

	public int getPayment_id() {
		return payment_id;
	}

	public void setPayment_id(int payment_id) {
		this.payment_id = payment_id;
	}

	public LocalDate getPayment_date() {
		return payment_date;
	}

	public void setPayment_date(LocalDate payment_date) {
		this.payment_date = payment_date;
	}

	public double getPaymentAmount() {
		return paymentAmount;
	}

	public void setPaymentAmount(double paymentAmount) {
		this.paymentAmount = paymentAmount;
	}

	public String getPaymentDesc() {
		return paymentDesc;
	}

	public void setPaymentDesc(String paymentDesc) {
		this.paymentDesc = paymentDesc;
	}
	
	
}