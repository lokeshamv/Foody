package servlet;

import java.io.IOException;
import java.util.List;

import dao.RestaurantDAO;
import daoimpl.RestaurantDAOImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Restaurant;

@WebServlet("/restaurants")
public class RestaurantServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private RestaurantDAO restaurantDAO;

    @Override
    public void init() throws ServletException {
        restaurantDAO = new RestaurantDAOImpl();
    }

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        String search = request.getParameter("search");
        String category = request.getParameter("category");

        List<Restaurant> restaurantList;

        if (search != null && !search.trim().isEmpty()) {

            restaurantList = restaurantDAO.searchRestaurants(search);

        } else if (category != null && !category.trim().isEmpty()) {

            restaurantList = restaurantDAO.getRestaurantsByCategory(category);

        } else {

            restaurantList = restaurantDAO.getAllRestaurants();
        }

        request.setAttribute("restaurants", restaurantList);

        request.getRequestDispatcher("/restaurants.jsp")
               .forward(request, response);
    }
}