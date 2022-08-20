public class Customer {
    public String accountId;
	public CustomerInfo customerInfo;
	public OrderDetails orderDetails;

	public class OrderDetails {
		public String orderInvoiceID;
		public String orderDescription;
		public Double orderInvoiceAmt;
		public String orderDate;
	}

	public class CustomerInfo {
		public String name;
		public String email;
		public String mobileNumber;
	}
}