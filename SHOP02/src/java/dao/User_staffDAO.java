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
import model.User_staff;

/**
 *
 * @author thanh_000
 */
public class User_staffDAO {
    public User_staff login(String user , String password) {
        Connection con = DBConnect.getConnecttion();
        String sql = "select * from user_staff where username ='" + user + "' and password ='" + password + "'";
        PreparedStatement ps;
        try {
            ps = (PreparedStatement) con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                User_staff  u = new User_staff();
                u.setUsername(rs.getString("username"));
                con.close();
                return u;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
