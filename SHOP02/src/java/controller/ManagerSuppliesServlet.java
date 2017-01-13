/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.SupplyDAO;
import java.io.IOException;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Supply;

/**
 *
 * @author thanh_000
 */
public class ManagerSuppliesServlet extends HttpServlet {

    SupplyDAO supplyDAO = new SupplyDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");
        String sup_id = request.getParameter("id_sup");
        String url = "";
        try {
            switch (command) {
                case "delete":
                    supplyDAO.deleteSupply(Long.parseLong(sup_id));
                    url = "/admin/manager_supplies/index.jsp";
                    break;
            }
        } catch (Exception e) {
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");
        String nameSupplies = request.getParameter("nameSupplies");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String url = "", error = "";
        if (nameSupplies.equals("")) {
            error = "Vui lòng nhập tên danh mục!";
            request.setAttribute("error", error);
        }
        try {
            if (error.length() == 0) {
                switch (command) {
                    case "insert":
                        supplyDAO.insertSupply(new Supply(new Date().getTime() % 10000, nameSupplies, address, phone, ""));
                        url = "/admin/manager_supplies/index.jsp";
                        break;
                    case "update":
                        supplyDAO.updateSupply(new Supply(Long.parseLong(request.getParameter("id_sup")), nameSupplies, address, phone, ""));
                        url = "/admin/manager_supplies/index.jsp";
                        break;
                }
            } else {
                url = "/admin/manager_supplies/insert.jsp";
            }
        } catch (Exception e) {
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);

    }

}
