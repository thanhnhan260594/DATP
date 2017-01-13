package dao;

import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Category;

public class CategoryDAO {

    public ArrayList<Category> getListCategory(int id) throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM categories Where id_par_cate =" + id;
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Category> list = new ArrayList<>();
        while (rs.next()) {
            Category category = new Category();
            category.setCategoryID(rs.getInt("id_cate"));
            category.setCategoryName(rs.getString("name_cate"));
            category.setCategorySlug(rs.getString("slug_cate"));
            list.add(category);
        }
        return list;
    }
    public ArrayList<Category> getListCategoryAll() throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM categories ";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Category> list = new ArrayList<>();
        while (rs.next()) {
            Category category = new Category();
            category.setCategoryID(rs.getInt("id_cate"));
            category.setCategoryName(rs.getString("name_cate"));
            category.setPar_categoryID(rs.getInt("id_par_cate"));
            category.setCategorySlug(rs.getString("slug_cate"));
            list.add(category);
        }
        return list;
    }

    public static void main(String[] args) throws SQLException {
        CategoryDAO dao = new CategoryDAO();
        for (Category ds : dao.getListCategoryAll()) {
            System.out.println(ds.getCategoryName() + " - " + ds.getCategorySlug());
        }
    }
}
