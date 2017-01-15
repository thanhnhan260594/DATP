/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.User_staffDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User_staff;

/**
 *
 * @author thanh_000
 */
public class User_staffServlet extends HttpServlet {

    User_staffDAO usDAO = new User_staffDAO();

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String command = request.getParameter("command");
        String url = "";
        User_staff us = new User_staff();
        HttpSession session = request.getSession();
        switch (command) {
            case "Login":
                us = usDAO.login(request.getParameter("username"),(request.getParameter("password")));
                if (us != null) {
                    session.setAttribute("us", us);
                    url = "/admin/index.jsp";
                }else{
                    session.setAttribute("error", "Error email or password!");
                    url = "/admin/login.jsp";
                }
                break;
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }

    
}
