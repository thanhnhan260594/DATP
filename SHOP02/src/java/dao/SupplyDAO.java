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
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Supply;

/**
 *
 * @author thanh_000
 */
public class SupplyDAO {

    public ArrayList<Supply> getListSupply() throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM supplies ORDER BY id_sup ASC ";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();

        ArrayList<Supply> list = new ArrayList<>();
        while (rs.next()) {
            Supply supply = new Supply();
            supply.setSupplyID(rs.getInt("id_sup"));
            supply.setSupplyName(rs.getString("name_sup"));
            supply.setSuppleAddress(rs.getString("address_sup"));
            supply.setSupplePhone(rs.getString("phone"));
            supply.setSupplySlug(rs.getString("slug_sup"));
            list.add(supply);
        }
        return list;
    }

    public boolean insertSupply(Supply s) {
        Connection connection = DBConnect.getConnecttion();
        String sql = "INSERT INTO supplies VALUE(?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setLong(1, s.getSupplyID());
            ps.setString(2, s.getSupplyName());
            ps.setString(3, s.getSuppleAddress());
            ps.setString(4, s.getSupplePhone());
            ps.setString(5, s.getSupplySlug());
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(SupplyDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean updateSupply(Supply s) {
        Connection connection = DBConnect.getConnecttion();
        String sql = "UPDATE supplies SET name_sup = ?, address_sup = ?, phone = ?, slug_sup = ? WHERE id_sup = ?";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setString(1, s.getSupplyName());
            ps.setString(2, s.getSuppleAddress());
            ps.setString(3, s.getSupplePhone());
            ps.setString(4, s.getSupplySlug());
            ps.setLong(5, s.getSupplyID());
            return ps.executeUpdate() == 1;
        } catch (Exception ex) {
            Logger.getLogger(SupplyDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean deleteSupply(long id_sup) {
        Connection connection = DBConnect.getConnecttion();
        String sql = "DELETE FROM supplies WHERE id_sup = ?";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setLong(1, id_sup);
            return ps.executeUpdate() == 1;

        } catch (Exception ex) {
            Logger.getLogger(SupplyDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public static void main(String[] args) throws SQLException {
        SupplyDAO dao = new SupplyDAO();
        System.out.println(dao.updateSupply(new Supply(10, "ABC", "DD", "532", "a-b-c")));

    }
}
