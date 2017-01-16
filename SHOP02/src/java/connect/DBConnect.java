package connect;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;

public class DBConnect {

    public static Connection getConnecttion() {
        Connection cons = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cons = (Connection) DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/shop_thoi_trang", "root", "root");
//            cons = (Connection) DriverManager.getConnection(
//                    "jdbc:mysql://node41123-shopht.jelastic.skali.net/shop_thoi_trang", "root", "HSInab95244");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cons;

    }

    public static void main(String[] args) {
        System.out.println(getConnecttion());
    }


}
