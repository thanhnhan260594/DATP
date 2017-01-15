package dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Supply;
import model.Value;

public class StatisticsDAO {

    public ArrayList<Value> getAll() {
        try {
            SupplyDAO  supplyDAO = new SupplyDAO();
            ProductDAO productDAO = new ProductDAO();
            ArrayList<Value> list = new ArrayList<>();
            for (Supply supply : supplyDAO.getListSupply()) {
                list.add(new Value(supply.getSupplyName(),
                        productDAO.getListProductBySupply(supply.getSupplyID()).size()));
            }
            return list;
        }catch (SQLException ex) {
            Logger.getLogger(StatisticsDAO.class.getName()).log(Level.SEVERE, null, ex);

        return null;
    }
}
    
    public static void main(String[] args) {
//        System.out.println(new StatisticsDAO().getAll());
 for(Value v : new StatisticsDAO().getAll()){
            System.out.println(v.getName() + " - "+v.getValue());
        }
    }
}

