/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.OrderDAO;
import dao.OrderDetailDAO;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Order;
import model.OrderDetail;
import model.Cart;
import model.Item;
import model.User;
import model.Customer;
import tools.SendMail;

/**
 *
 * @author thanh_000
 */
public class CheckoutServlet extends HttpServlet {

    private final OrderDAO orderDAO = new OrderDAO();
    private final OrderDetailDAO orderDetailDAO = new OrderDetailDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        User user = (User) session.getAttribute("user");
        try {
            long ID = new Date().getTime();
            Order order = new Order();
            order.setOrderID(ID);
            order.setCustomerID(user.getUserID());
            order.setDate(new Timestamp(new Date().getTime()));
            order.setTotal(cart.total());
            orderDAO.insertOrder(order);
            for (Map.Entry<Long, Item> list : cart.getCartItems().entrySet()) {
                orderDetailDAO.insertOrderDetail(new OrderDetail(
                        ID,
                        list.getValue().getProduct().getProductID(),
                        list.getValue().getProduct().getProductPrice(),
                        list.getValue().getQuantity()
                ));
            }
            SendMail sm = new SendMail();
            SendMail.sendMail(user.getUserEmail(), "Xác nhận đơn hàng", "Xin chào,"+user.getUserEmail()+"\nTotal: "+cart.total());
            
            cart = new Cart();
            session.setAttribute("cart", cart);
        } catch (Exception e) {
        }
        response.sendRedirect("/SHOP02/index.jsp");
    }
}
