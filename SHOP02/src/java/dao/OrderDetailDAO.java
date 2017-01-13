
package dao;

import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.OrderDetail;
public class OrderDetailDAO {

    public void insertOrderDetail(OrderDetail od) throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "INSERT INTO orderdetails (id_order,id_product,quatity,unit_price) VALUES(?,?,?,?)";
        PreparedStatement ps = connection.prepareCall(sql);
        
        ps.setLong(1, od.getOrderID());
        ps.setLong(2, od.getProductID());
        ps.setInt(3, od.getQuantity());
        ps.setDouble(4, od.getPrice());        
        ps.executeUpdate();
    }

    public static void main(String[] args) throws SQLException {
        new OrderDetailDAO().insertOrderDetail(new OrderDetail(1, 1, 33, 4));
    }
}

