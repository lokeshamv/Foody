package servlet;

import java.io.IOException;

import dao.MenuDAO;
import daoimpl.MenuDAOImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Cart;
import model.CartItem;
import model.Menu;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private MenuDAO menuDAO;

    @Override
    public void init() throws ServletException {
        menuDAO = new MenuDAOImpl();
    }

    // =========================
    // ADD ITEM TO CART
    // =========================
    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        int menuID = Integer.parseInt(request.getParameter("menuID"));

        int quantity = 1;

        String qty = request.getParameter("quantity");

        if (qty != null && !qty.trim().isEmpty()) {
            quantity = Integer.parseInt(qty);
        }

        Menu menu = menuDAO.getMenu(menuID);

        HttpSession session = request.getSession();

        Cart cart = (Cart) session.getAttribute("cart");

        if (cart == null) {
            cart = new Cart();
        }

        CartItem item = new CartItem();

        item.setMenuID(menu.getMenuID());
        item.setRestaurantID(menu.getRestaurantID());
        item.setItemName(menu.getItemName());
        item.setPrice(menu.getPrice());
        item.setQuantity(quantity);
        item.setImagePath(menu.getImagePath());

        // Set restaurant name only if Menu has it
    

        cart.addItem(item);

        session.setAttribute("cart", cart);

        response.sendRedirect("cart");
    }

    // =========================
    // CART OPERATIONS
    // =========================
    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        Cart cart = (Cart) session.getAttribute("cart");

        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }

        String action = request.getParameter("action");

        if (action != null) {

            switch (action) {

                case "increase":

                    int increaseID = Integer.parseInt(request.getParameter("menuID"));

                    cart.increaseQuantity(increaseID);

                    break;

                case "decrease":

                    int decreaseID = Integer.parseInt(request.getParameter("menuID"));

                    cart.decreaseQuantity(decreaseID);

                    break;

                case "remove":

                    int removeID = Integer.parseInt(request.getParameter("menuID"));

                    cart.removeItem(removeID);

                    break;

                case "clear":

                    cart.clearCart();

                    break;

                default:

                    break;
            }

            session.setAttribute("cart", cart);
        }

        request.getRequestDispatcher("cart.jsp")
               .forward(request, response);
    }
}