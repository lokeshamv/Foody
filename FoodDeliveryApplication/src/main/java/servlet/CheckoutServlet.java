package servlet;

import java.io.IOException;

import dao.OrderDAO;
import daoimpl.OrderDAOImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Cart;
import model.CartItem;
import model.Order;
import model.OrderItem;
import model.User;

@WebServlet("/checkout")
public class CheckoutServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private OrderDAO orderDAO;

    @Override
    public void init() throws ServletException {

        orderDAO = new OrderDAOImpl();

    }

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        User user = (User) session.getAttribute("loggedInUser");

        Cart cart = (Cart) session.getAttribute("cart");

        if (user == null) {

            response.sendRedirect("login.jsp");
            return;

        }

        if (cart == null || cart.isEmpty()) {

            response.sendRedirect("cart.jsp");
            return;

        }

        int restaurantID = 0;

        for (CartItem item : cart.getItems()) {

            restaurantID = item.getRestaurantID();
            break;

        }

        String paymentMethod = request.getParameter("paymentMethod");

        if (paymentMethod == null || paymentMethod.isBlank()) {

            paymentMethod = "COD";

        }

        Order order = new Order();

        order.setUserID(user.getUserID());
        order.setRestaurantID(restaurantID);
        order.setTotalAmount(cart.getGrandTotal());
        order.setStatus("PLACED");
        order.setPaymentMethod(paymentMethod);

        int orderID = orderDAO.placeOrder(order);

        if (orderID > 0) {

            for (CartItem cartItem : cart.getItems()) {

                OrderItem item = new OrderItem();

                item.setOrderID(orderID);
                item.setMenuID(cartItem.getMenuID());
                item.setQuantity(cartItem.getQuantity());
                item.setItemTotal(cartItem.getTotalPrice());

                orderDAO.addOrderItem(item);

            }

            cart.clearCart();

            session.setAttribute("cart", cart);

            response.sendRedirect("orderSuccess.jsp");

        } else {

            response.sendRedirect("checkout.jsp?error=1");

        }

    }

}