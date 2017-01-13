package model;

//import java.util.Date;
import java.sql.Date;

public class Product {

    private long productID;
    private String productName;
    private Double productPrice;
    private String productSlug;
    private String productImage;
    private String productDescription;
    private long supplyID;
    private long categoryID;
    private Date productDate;

    public Product() {
    }

    public Product(long productID, String productName, Double productPrice, String productSlug, String productImage, String productDescription, long supplyID, long categoryID, Date productDate) {
        this.productID = productID;
        this.productName = productName;
        this.productPrice = productPrice;
        this.productSlug = productSlug;
        this.productImage = productImage;
        this.productDescription = productDescription;
        this.supplyID = supplyID;
        this.categoryID = categoryID;
        this.productDate = productDate;
    }

    public Product(long l, String nameSupplies, String address, String phone, String string) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public Product(long l, String nameProduct, String priceProduct, String imageProduct, String description, String supplies, String categories) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public Product(long l, String nameProduct, String priceProduct, String imageProduct, String description, String supplies, String categories, Date sqlDate) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public Product(long time, String nameProduct, double priceProduct, String imageProduct, String description, int supplies, int categories, Date sqlDate) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public long getProductID() {
        return productID;
    }

    public void setProductID(long productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public Double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(Double productPrice) {
        this.productPrice = productPrice;
    }

    public String getProductSlug() {
        return productSlug;
    }

    public void setProductSlug(String productSlug) {
        this.productSlug = productSlug;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public long getSupplyID() {
        return supplyID;
    }

    public void setSupplyID(long supplyID) {
        this.supplyID = supplyID;
    }

    public long getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(long categoryID) {
        this.categoryID = categoryID;
    }

    public Date getProductDate() {
        return productDate;
    }

    public void setProductDate(Date productDate) {
        this.productDate = productDate;
    }

}
