package servlet;

import java.io.IOException;
import java.util.List;

import dao.MenuDAO;
import daoimpl.MenuDAOImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Menu;

@WebServlet("/menu")
public class MenuServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private MenuDAO menuDAO;

    @Override
    public void init() throws ServletException {
        menuDAO = new MenuDAOImpl();
    }

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        int restaurantID =
                Integer.parseInt(request.getParameter("restaurantID"));

        List<Menu> menuList =
                menuDAO.getMenusByRestaurant(restaurantID);

        request.setAttribute("menus", menuList);

        request.setAttribute("restaurantID", restaurantID);

        request.getRequestDispatcher("menu.jsp")
               .forward(request, response);
    }

}