package dao;

import java.util.List;
import model.Restaurant;

public interface RestaurantDAO {

    int addRestaurant(Restaurant restaurant);

    Restaurant getRestaurant(int restaurantID);

    List<Restaurant> getAllRestaurants();

    int updateRestaurant(Restaurant restaurant);

    int deleteRestaurant(int restaurantID);

    // Search by restaurant name or dish name
    List<Restaurant> searchRestaurants(String keyword);

    // Restaurants serving a particular category
    List<Restaurant> getRestaurantsByCategory(String category);
}