package controller;

import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "CheckEmailServlet", urlPatterns = {"/CheckEmailServlet"})
public class CheckEmailServlet extends HttpServlet {

    UserDAO usersDAO = new UserDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (usersDAO.checkEmail(request.getParameter("email"))) {
            response.getWriter().write("<img src=\"images/check02.png\" />");
        } else {
            response.getWriter().write("<img src=\"images/check01.png\" />");
        }
    }
    
    }








