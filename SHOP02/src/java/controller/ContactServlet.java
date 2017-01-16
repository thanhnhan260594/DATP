/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Contact;
import tools.SendMail;

/**
 *
 * @author thanh_000
 */
public class ContactServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
 @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Contact  ct = new Contact();
        try{
            ct.setName(request.getParameter("Name"));
            ct.setEmail(request.getParameter("Email"));
            ct.setSubject(request.getParameter("Subject"));
            ct.setMessage(request.getParameter("Message"));
            
            SendMail sm = new SendMail();
            SendMail.sendMail("thanhnhan260594@gmail.com",ct.getSubject(), ct.getMessage()+" được gửi bởi" + ct.getName() + "bởi email " + ct.getEmail());
                
                }catch (Exception e) {
        }
        response.sendRedirect("/index.jsp");
    }
}
