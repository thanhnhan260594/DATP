/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
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

    public ArrayList<Order> getListOrder() throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM orders";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Order> list = new ArrayList<>();
        while (rs.next()) {
            Order order = new Order();
            order.setOrderID(rs.getLong("id_order"));
            order.setCustomerID(rs.getInt("id_customer"));
            order.setDate(rs.getTimestamp("date"));
            order.setTotal(rs.getDouble("total"));
            list.add(order);
        }
        return list;
    }

    public static void main(String[] args) throws SQLException {
        OrderDAO dao = new OrderDAO();
        for (Order ds : dao.getListOrder()) {
            System.out.println(ds.getCustomerID());
        }
//        new OrderDAO().insertOrder(new Order(1225, 1, new Timestamp(new Date().getTime()), 1, 100));
    }
}
