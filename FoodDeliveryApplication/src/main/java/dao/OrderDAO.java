package dao;

import java.util.List;
import model.Order;
import model.OrderItem;

public interface OrderDAO {

    int placeOrder(Order order);

    void addOrderItem(OrderItem item);

    List<Order> getOrdersByUser(int userID);

    List<OrderItem> getOrderItems(int orderID);

}