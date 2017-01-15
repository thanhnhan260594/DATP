package dao;

import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Product;

public class ProductDAO {

// lấy danh sách sản phẩm
    public ArrayList<Product> getListProductByPagesCategory(long cate_id, int firstResult, int maxResult) throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM products WHERE id_cate = '" + cate_id + "' limit ?,?";
        PreparedStatement ps = connection.prepareCall(sql);
        ps.setInt(1, firstResult);
        ps.setInt(2, maxResult);
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getLong("id_product"));
            product.setProductName(rs.getString("name_product"));
            product.setProductImage(rs.getString("image"));
            product.setProductPrice(rs.getDouble("price"));
            product.setProductDescription(rs.getString("description"));
            product.setProductSlug(rs.getString("slug_product"));
            list.add(product);
        }
        return list;
    }
    
    public ArrayList<Product> getListProductBySupply(long sup_id) throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM products WHERE id_sup = '" + sup_id + "'";
        PreparedStatement ps = connection.prepareCall(sql);
//        ps.setInt(1, firstResult);
//        ps.setInt(2, maxResult);
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getLong("id_product"));
            product.setProductName(rs.getString("name_product"));
            product.setProductImage(rs.getString("image"));
            product.setProductPrice(rs.getDouble("price"));
            product.setProductDescription(rs.getString("description"));
            product.setProductSlug(rs.getString("slug_product"));
            list.add(product);
        }
        return list;
    }
    
    // tính tổng sản phẩm theo danh mục
    public int countProductByCategory(long cate_id) throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT count(id_product) FROM products WHERE id_cate = '" + cate_id + "'";
        PreparedStatement ps = connection.prepareCall(sql);

        ResultSet rs = ps.executeQuery();
        int count = 0;
        while (rs.next()) {
            count = rs.getInt(1);
        }
        return count;
    }
    
    //tổng sản phẩm
    public int countProduct() throws SQLException
    {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT count(id_product) FROM products ";
        PreparedStatement ps = connection.prepareCall(sql);

        ResultSet rs = ps.executeQuery();
        int count = 0;
        while (rs.next()) {
            count = rs.getInt(1);
        }
        return count;
    }

    // lấy sản phẩm mới nhất       
    public ArrayList<Product> getListNewProduct() throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM products ORDER BY date_update DESC LIMIT 8";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();

        ArrayList<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getLong("id_product"));
            product.setProductName(rs.getString("name_product"));
            product.setProductImage(rs.getString("image"));
            product.setProductPrice(rs.getDouble("price"));
            product.setProductDescription(rs.getString("description"));
            product.setProductSlug(rs.getString("slug_product"));
            list.add(product);
        }
        return list;
    }

    //lấy danh sách sản phẩm 
    public ArrayList<Product> getListProduct() throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM products ORDER BY id_product ASC";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();

        ArrayList<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getLong("id_product"));
            product.setProductName(rs.getString("name_product"));
            product.setProductImage(rs.getString("image"));
            product.setProductPrice(rs.getDouble("price"));
            product.setProductDescription(rs.getString("description"));
            product.setProductDate(rs.getDate("date_update"));
            product.setCategoryID(rs.getLong("id_cate"));
            product.setSupplyID(rs.getLong("id_sup"));
            product.setProductSlug(rs.getString("slug_product"));
            list.add(product);
        }
        return list;
    }
  //lấy danh sách tìm kiếm
    public ArrayList<Product> getListProductByWord(String w) throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM products WHERE name_product like '%"+w+"%'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();

        ArrayList<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getLong("id_product"));
            product.setProductName(rs.getString("name_product"));
            product.setProductImage(rs.getString("image"));
            product.setProductPrice(rs.getDouble("price"));
            product.setProductDescription(rs.getString("description"));
            product.setProductSlug(rs.getString("slug_product"));
            list.add(product);
        }
        return list;
    }
    
//lấy thông tin sản phẩm
    public Product getProduct(long productID) throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM products WHERE id_product = " + productID;
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        Product product = new Product();
        while (rs.next()) {
            product.setProductID(rs.getLong("id_product"));
            product.setProductName(rs.getString("name_product"));
            product.setProductImage(rs.getString("image"));
            product.setProductPrice(rs.getDouble("price"));
            product.setProductDescription(rs.getString("description"));
        }
        return product;
    }
//thêm sản phẩm
    public boolean insertProduct(Product s) {
        Connection connection = DBConnect.getConnecttion();
        String sql = "INSERT INTO products "
                + "(id_product,name_product,price,slug_product,image,description,id_sup,id_cate,date_update) VALUES "
                + "(?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setLong(1, s.getProductID());
            ps.setString(2, s.getProductName());
            ps.setDouble(3, s.getProductPrice());
            ps.setString(4, s.getProductSlug());
            ps.setString(5, s.getProductImage());
            ps.setString(6, s.getProductDescription());
            ps.setLong(7, s.getSupplyID());
            ps.setLong(8, s.getCategoryID());
            ps.setDate(9, s.getProductDate());
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
//cập nhật sản phẩm
    public boolean updateProduct(Product s) {
        Connection connection = DBConnect.getConnecttion();
        String sql = "UPDATE products "
                + "SET name_product = ?, price = ?, image = ?, description = ?, id_sup = ?, id_cate= ?, date_update= ? "
                + "WHERE id_product = ?";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setString(1, s.getProductName());
            ps.setDouble(2, s.getProductPrice());
            ps.setString(3, s.getProductImage());
            ps.setString(4, s.getProductDescription());
            ps.setLong(5, s.getSupplyID());
            ps.setLong(6, s.getCategoryID());
            ps.setDate(7, s.getProductDate());
            ps.setLong(8, s.getProductID());
            return ps.executeUpdate() == 1;
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
//xóa sản phẩm
    public boolean deleteProduct(long productID) {
        Connection connection = DBConnect.getConnecttion();
        String sql = "DELETE FROM products WHERE id_product = ?";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setLong(1, productID);
            return ps.executeUpdate() == 1;

        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    

    public static void main(String[] args) throws SQLException {
        ProductDAO dao = new ProductDAO();
//        java.util.Date a = new java.util.Date();
//        java.sql.Date sqlDate = new java.sql.Date(a.getTime());
        for (Product ds : dao.getListProductBySupply(2)) {
            System.out.println(ds.getProductName() + " - ");
        }
//        System.out.println(dao.countProductByCategory(1));
//        System.out.println(dao.insertProduct(new Product(a.getTime()%100, "TEST2", 20000.0, "test-2", "somi02.jpg", "áo test 2", 2, 2, sqlDate )));
//        System.out.println(dao.updateProduct(new Product(64, "TEST", 300000.0, "test", "somi01.jpg", "áo test 1", 1, 1, sqlDate)));
//        System.out.println(dao.deleteProduct(90));

//        for (Product ds : dao.getListProductByWord("đen")){
//            System.out.println(ds.getProductID()+ " - " + ds.getProductName());
//        }
    }
}
