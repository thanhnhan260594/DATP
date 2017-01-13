
package model;

public class User {

    private long userID;
    private String userName;
    private String userPass;
    private String userEmail;

    public User() {
    }

    public User(long userID, String userName, String userPass, String userEmail) {
        this.userID = userID;
        this.userName = userName;
        this.userPass = userPass;
        this.userEmail = userEmail;
    }

    public long getUserID() {
        return userID;
    }

    public void setUserID(long userID) {
        this.userID = userID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPass() {
        return userPass;
    }

    public void setUserPass(String userPass) {
        this.userPass = userPass;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

   
}
