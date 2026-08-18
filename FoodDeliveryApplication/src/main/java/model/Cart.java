package model;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

public class Cart {

    // Key = MenuID, Value = CartItem
    private Map<Integer, CartItem> items;

    public Cart() {
        items = new LinkedHashMap<>();
    }

    // Add item to cart
    public void addItem(CartItem item) {

        if (items.containsKey(item.getMenuID())) {

            CartItem existingItem = items.get(item.getMenuID());

            existingItem.setQuantity(existingItem.getQuantity() + item.getQuantity());

        } else {

            items.put(item.getMenuID(), item);

        }
    }

    // Increase quantity
    public void increaseQuantity(int menuID) {

        if (items.containsKey(menuID)) {

            CartItem item = items.get(menuID);

            item.setQuantity(item.getQuantity() + 1);

        }
    }

    // Decrease quantity
    public void decreaseQuantity(int menuID) {

        if (items.containsKey(menuID)) {

            CartItem item = items.get(menuID);

            if (item.getQuantity() > 1) {

                item.setQuantity(item.getQuantity() - 1);

            } else {

                items.remove(menuID);

            }
        }
    }

    // Update quantity directly
    public void updateQuantity(int menuID, int quantity) {

        if (items.containsKey(menuID)) {

            if (quantity <= 0) {

                items.remove(menuID);

            } else {

                items.get(menuID).setQuantity(quantity);

            }
        }
    }

    // Remove one item
    public void removeItem(int menuID) {

        items.remove(menuID);

    }

    // Empty the cart
    public void clearCart() {

        items.clear();

    }

    // Get all cart items
    public Collection<CartItem> getItems() {

        return items.values();

    }

    // Total number of items
    public int getTotalItems() {

        int count = 0;

        for (CartItem item : items.values()) {

            count += item.getQuantity();

        }

        return count;

    }

    // Grand total
    public double getGrandTotal() {

        double total = 0;

        for (CartItem item : items.values()) {

            total += item.getTotalPrice();

        }

        return total;

    }

    // Check if cart is empty
    public boolean isEmpty() {

        return items.isEmpty();

    }

    // Get item by Menu ID
    public CartItem getItem(int menuID) {

        return items.get(menuID);

    }

    // Get complete map (optional)
    public Map<Integer, CartItem> getItemMap() {

        return items;

    }
}