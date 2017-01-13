
package model;


public class Supply {
    private long supplyID;
    private String supplyName;
    private String suppleAddress;
    private String supplePhone;
    private String supplySlug;

    public Supply() {
    }

    public Supply(long supplyID, String supplyName, String suppleAddress, String supplePhone, String supplySlug) {
        this.supplyID = supplyID;
        this.supplyName = supplyName;
        this.suppleAddress = suppleAddress;
        this.supplePhone = supplePhone;
        this.supplySlug = supplySlug;
    }

    public Supply(int i, String string) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public long getSupplyID() {
        return supplyID;
    }

    public void setSupplyID(long supplyID) {
        this.supplyID = supplyID;
    }

    public String getSupplyName() {
        return supplyName;
    }

    public void setSupplyName(String supplyName) {
        this.supplyName = supplyName;
    }

    public String getSuppleAddress() {
        return suppleAddress;
    }

    public void setSuppleAddress(String suppleAddress) {
        this.suppleAddress = suppleAddress;
    }

    public String getSupplePhone() {
        return supplePhone;
    }

    public void setSupplePhone(String supplePhone) {
        this.supplePhone = supplePhone;
    }

    public String getSupplySlug() {
        return supplySlug;
    }

    public void setSupplySlug(String supplySlug) {
        this.supplySlug = supplySlug;
    }
}
