package servlet;

import java.io.IOException;

import dao.UserDAO;
import daoimpl.UserDAOImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String email=request.getParameter("email");
        String password=request.getParameter("password");

        UserDAO dao=new UserDAOImpl();

        User user=dao.validateUser(email,password);

        if(user!=null){

            HttpSession session=request.getSession();

            session.setAttribute("loggedInUser", user);

            response.sendRedirect("restaurants");

        }else{

            request.setAttribute("error","Invalid Email or Password");

            request.getRequestDispatcher("login.jsp")
                   .forward(request,response);

        }

    }

}