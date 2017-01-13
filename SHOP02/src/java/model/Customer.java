package model;

public class Customer {

    public static long get;

    Long customerID;
    Long userID;
    String customerName;
    String customerAddress;
    String customerPhone;

    public Customer() {
    }

    public Customer(Long customerID, Long userID, String customerName, String customerAddress, String customerPhone) {
        this.customerID = customerID;
        this.userID = userID;
        this.customerName = customerName;
        this.customerAddress = customerAddress;
        this.customerPhone = customerPhone;
    }

    public static long getGet() {
        return get;
    }

    public static void setGet(long get) {
        Customer.get = get;
    }

    public Long getCustomerID() {
        return customerID;
    }

    public void setCustomerID(Long customerID) {
        this.customerID = customerID;
    }

    public Long getUserID() {
        return userID;
    }

    public void setUserID(Long userID) {
        this.userID = userID;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerAddress() {
        return customerAddress;
    }

    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }

    public String getCustomerPhone() {
        return customerPhone;
    }

    public void setCustomerPhone(String customerPhone) {
        this.customerPhone = customerPhone;
    }

}