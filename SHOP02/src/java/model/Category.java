package model;

public class Category {

    private long categoryID;
    private String categoryName;
    private String categorySlug;
    private long par_categoryID;

    public Category() {
    }

    public Category(long categoryID, String categoryName, String categorySlug, long par_categoryID) {
        this.categoryID = categoryID;
        this.categoryName = categoryName;
        this.categorySlug = categorySlug;
        this.par_categoryID = par_categoryID;
    }
    

    public long getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(long categoryID) {
        this.categoryID = categoryID;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getCategorySlug() {
        return categorySlug;
    }

    public void setCategorySlug(String categorySlug) {
        this.categorySlug = categorySlug;
    }

    public long getPar_categoryID() {
        return par_categoryID;
    }

    public void setPar_categoryID(long par_categoryID) {
        this.par_categoryID = par_categoryID;
    }
}
