/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;
import model.Order;

/**
 *
 * @author thanh_000
 */
public class OrderDAO {

    public void insertOrder(Order order) throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "INSERT INTO orders (id_order,id_customer,date,status,total) VALUES(?,?,?,?,?)";
        PreparedStatement ps = connection.prepareCall(sql);
        ps.setLong(1, order.getOrderID());
        ps.setLong(2, order.getCustomerID());
        ps.setTimestamp(3, order.getDate());
        ps.setDouble(4, order.getStatus());
        ps.setDouble(5, order.getTotal());
        
        ps.executeUpdate();
    }

    public static void main(String[] args) throws SQLException {
        
       new OrderDAO().insertOrder(new Order(1225, 1, new Timestamp(new Date().getTime()), 1, 100));
    }
}
