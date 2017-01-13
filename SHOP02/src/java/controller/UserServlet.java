
package controller;
import dao.UserDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;
public class UserServlet extends HttpServlet {
    UserDAO userDAO = new UserDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String command = request.getParameter("command");
        String url = "";
        User u = new User();
        HttpSession session = request.getSession();
        switch (command) {
            case "insert":
                u.setUserID( new java.util.Date().getTime());
                u.setUserName(request.getParameter("username"));
                u.setUserEmail(request.getParameter("email"));
                u.setUserPass(request.getParameter("password"));
                userDAO.insertUser(u);
                url = "/index.jsp";
                break;
            case "login":
                u = userDAO.login(request.getParameter("email"), request.getParameter("password"));
                if (u != null) {
                    session.setAttribute("user", u);
                    url = "/index.jsp";
                }else{
                    session.setAttribute("error", "Email hoặc mật khẩu không đúng.!");
                    url = "/login.jsp";
                }
                break;
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }
}
