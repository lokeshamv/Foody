package model;

public class CartItem {

    private int menuID;
    private int restaurantID;
    private String itemName;
    private double price;
    private int quantity;
    private String imagePath;
    private String restaurantName;

    public CartItem() {

    }

    public CartItem(int menuID,
                    int restaurantID,
                    String itemName,
                    double price,
                    int quantity,
                    String imagePath,
                    String restaurantName) {

        this.menuID = menuID;
        this.restaurantID = restaurantID;
        this.itemName = itemName;
        this.price = price;
        this.quantity = quantity;
        this.imagePath = imagePath;
        this.restaurantName = restaurantName;
    }

    public int getMenuID() {
        return menuID;
    }

    public void setMenuID(int menuID) {
        this.menuID = menuID;
    }

    public int getRestaurantID() {
        return restaurantID;
    }

    public void setRestaurantID(int restaurantID) {
        this.restaurantID = restaurantID;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public String getRestaurantName() {
        return restaurantName;
    }

    public void setRestaurantName(String restaurantName) {
        this.restaurantName = restaurantName;
    }

    public double getTotalPrice() {
        return price * quantity;
    }

    @Override
    public String toString() {
        return "CartItem{" +
                "menuID=" + menuID +
                ", restaurantID=" + restaurantID +
                ", itemName='" + itemName + '\'' +
                ", price=" + price +
                ", quantity=" + quantity +
                ", imagePath='" + imagePath + '\'' +
                ", restaurantName='" + restaurantName + '\'' +
                '}';
    }
}