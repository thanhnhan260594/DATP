package model;

import java.sql.Timestamp;

public class Order {

    private long orderID;
    private long customerID;
    private Timestamp date;
    private int status;
    private double total;

    public Order() {
    }

    public Order(long orderID, long customerID, Timestamp date, int status, double total) {
        this.orderID = orderID;
        this.customerID = customerID;
        this.date = date;
        this.status = status;
        this.total = total;
    }

    public long getOrderID() {
        return orderID;
    }

    public void setOrderID(long orderID) {
        this.orderID = orderID;
    }

    public long getCustomerID() {
        return customerID;
    }

    public void setCustomerID(long customerID) {
        this.customerID = customerID;
    }

    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }
    

}
