/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.ProductDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Product;

/**
 *
 * @author thanh_000
 */
public class ManagerProductsServlet extends HttpServlet {
ProductDAO productDAO = new ProductDAO();

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
                    productDAO.deleteProduct(Long.parseLong(sup_id));
                    url = "/admin/manager_products/index.jsp";
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
        String nameProduct = request.getParameter("nameProduct");
        double priceProduct = Double.parseDouble(request.getParameter("priceProduct")) ;
        String imageProduct = request.getParameter("imageProduct");
        String description = request.getParameter("description");
        int supplies = Integer.parseInt(request.getParameter("supplies")) ;
        int categories = Integer.parseInt(request.getParameter("categories"));
        String url = "", error = "";
        java.util.Date a = new java.util.Date();
        java.sql.Date sqlDate = new java.sql.Date(a.getTime());
//        if (nameProduct.equals("")) {
//            error = "Vui lòng nhập tên danh mục!";
//            request.setAttribute("error", error);
//        }
        try {
            if (error.length() == 0) {
                switch (command) {
                    case "insert":
//                        System.out.println(productDAO.insertProduct(new Product(a.getTime(), nameProduct, priceProduct, imageProduct, description, supplies, categories, sqlDate)));
                        productDAO.insertProduct(new Product(a.getTime()%1000, nameProduct, priceProduct, imageProduct, description, supplies, categories, sqlDate));
                        url = "/admin/manager_products/index.jsp";
                        break;
                    case "update":
//                        productDAO.updateProduct(new Product(Long.parseLong(request.getParameter("id_sup")), nameProduct, address, phone, ""));
                        url = "/admin/manager_products/index.jsp";
                        break;
                }
            } else {
                url = "/admin/manager_products/insert.jsp";
            }
        } catch (Exception e) {
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);

    }

}
