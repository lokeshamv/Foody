package daoimpl;

import dao.RestaurantDAO;
import model.Restaurant;
import util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;

public class RestaurantDAOImpl implements RestaurantDAO {

    @Override
    public int addRestaurant(Restaurant restaurant) {

        String sql =
        "INSERT INTO Restaurant(Name,CuisineType,DeliveryTime,Address,Rating,IsActive,ImagePath) VALUES(?,?,?,?,?,?,?)";

        try(
                Connection con = DBConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(sql)
        ){

            ps.setString(1, restaurant.getName());
            ps.setString(2, restaurant.getCuisineType());
            ps.setInt(3, restaurant.getDeliveryTime());
            ps.setString(4, restaurant.getAddress());
            ps.setDouble(5, restaurant.getRating());
            ps.setBoolean(6, restaurant.isActive());
            ps.setString(7, restaurant.getImagePath());

            return ps.executeUpdate();

        }
        catch(SQLException e){

            e.printStackTrace();

        }

        return 0;
    }



    @Override
    public Restaurant getRestaurant(int restaurantID) {

        Restaurant restaurant = null;

        String sql =
        "SELECT * FROM Restaurant WHERE RestaurantID=?";

        try(

                Connection con = DBConnection.getConnection();

                PreparedStatement ps = con.prepareStatement(sql)

        ){

            ps.setInt(1, restaurantID);

            ResultSet rs = ps.executeQuery();

            if(rs.next()){

                restaurant = new Restaurant();

                restaurant.setRestaurantID(rs.getInt("RestaurantID"));
                restaurant.setName(rs.getString("Name"));
                restaurant.setCuisineType(rs.getString("CuisineType"));
                restaurant.setDeliveryTime(rs.getInt("DeliveryTime"));
                restaurant.setAddress(rs.getString("Address"));
                restaurant.setRating(rs.getDouble("Rating"));
                restaurant.setActive(rs.getBoolean("IsActive"));
                restaurant.setImagePath(rs.getString("ImagePath"));

            }

        }
        catch(SQLException e){

            e.printStackTrace();

        }

        return restaurant;

    }



    @Override
    public List<Restaurant> getAllRestaurants() {

        List<Restaurant> restaurants = new ArrayList<>();

        String sql =
        "SELECT * FROM Restaurant WHERE IsActive=1";

        try(

                Connection con = DBConnection.getConnection();

                PreparedStatement ps = con.prepareStatement(sql);

                ResultSet rs = ps.executeQuery()

        ){

            while(rs.next()){

                Restaurant restaurant = new Restaurant();

                restaurant.setRestaurantID(rs.getInt("RestaurantID"));
                restaurant.setName(rs.getString("Name"));
                restaurant.setCuisineType(rs.getString("CuisineType"));
                restaurant.setDeliveryTime(rs.getInt("DeliveryTime"));
                restaurant.setAddress(rs.getString("Address"));
                restaurant.setRating(rs.getDouble("Rating"));
                restaurant.setActive(rs.getBoolean("IsActive"));
                restaurant.setImagePath(rs.getString("ImagePath"));

                restaurants.add(restaurant);

            }

        }
        catch(SQLException e){

            e.printStackTrace();

        }

        return restaurants;

    }
    @Override
    public int updateRestaurant(Restaurant restaurant) {

        String sql =
        "UPDATE Restaurant SET Name=?,CuisineType=?,DeliveryTime=?,Address=?,Rating=?,IsActive=?,ImagePath=? WHERE RestaurantID=?";

        try (

                Connection con = DBConnection.getConnection();

                PreparedStatement ps = con.prepareStatement(sql)

        ) {

            ps.setString(1, restaurant.getName());
            ps.setString(2, restaurant.getCuisineType());
            ps.setInt(3, restaurant.getDeliveryTime());
            ps.setString(4, restaurant.getAddress());
            ps.setDouble(5, restaurant.getRating());
            ps.setBoolean(6, restaurant.isActive());
            ps.setString(7, restaurant.getImagePath());
            ps.setInt(8, restaurant.getRestaurantID());

            return ps.executeUpdate();

        } catch (SQLException e) {

            e.printStackTrace();

        }

        return 0;
    }



    @Override
    public int deleteRestaurant(int restaurantID) {

        String sql =
        "DELETE FROM Restaurant WHERE RestaurantID=?";

        try (

                Connection con = DBConnection.getConnection();

                PreparedStatement ps = con.prepareStatement(sql)

        ) {

            ps.setInt(1, restaurantID);

            return ps.executeUpdate();

        } catch (SQLException e) {

            e.printStackTrace();

        }

        return 0;
    }



    // ============================================
    // SEARCH BY RESTAURANT NAME OR DISH NAME
    // ============================================

    @Override
    public List<Restaurant> searchRestaurants(String keyword) {

        List<Restaurant> restaurants = new ArrayList<>();

        String sql =
                "SELECT DISTINCT r.* " +
                "FROM Restaurant r " +
                "LEFT JOIN Menu m ON r.RestaurantID = m.RestaurantID " +
                "WHERE LOWER(r.Name) LIKE ? " +
                "OR LOWER(m.ItemName) LIKE ? " +
                "OR LOWER(m.Description) LIKE ?";

        try (

                Connection con = DBConnection.getConnection();

                PreparedStatement ps = con.prepareStatement(sql)

        ) {

            String search = "%" + keyword.toLowerCase() + "%";

            ps.setString(1, search);
            ps.setString(2, search);
            ps.setString(3, search);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Restaurant restaurant = new Restaurant();

                restaurant.setRestaurantID(rs.getInt("RestaurantID"));
                restaurant.setName(rs.getString("Name"));
                restaurant.setCuisineType(rs.getString("CuisineType"));
                restaurant.setDeliveryTime(rs.getInt("DeliveryTime"));
                restaurant.setAddress(rs.getString("Address"));
                restaurant.setRating(rs.getDouble("Rating"));
                restaurant.setActive(rs.getBoolean("IsActive"));
                restaurant.setImagePath(rs.getString("ImagePath"));

                restaurants.add(restaurant);
            }

        } catch (SQLException e) {

            e.printStackTrace();

        }

        return restaurants;
    }



    // ============================================
    // CATEGORY SEARCH
    // ============================================

    @Override
    public List<Restaurant> getRestaurantsByCategory(String category) {

        List<Restaurant> restaurants = new ArrayList<>();

        String sql =
                "SELECT DISTINCT r.* " +
                "FROM Restaurant r " +
                "JOIN Menu m ON r.RestaurantID = m.RestaurantID " +
                "WHERE LOWER(m.ItemName) LIKE ?";

        try (

                Connection con = DBConnection.getConnection();

                PreparedStatement ps = con.prepareStatement(sql)

        ) {

            ps.setString(1, "%" + category.toLowerCase() + "%");

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Restaurant restaurant = new Restaurant();

                restaurant.setRestaurantID(rs.getInt("RestaurantID"));
                restaurant.setName(rs.getString("Name"));
                restaurant.setCuisineType(rs.getString("CuisineType"));
                restaurant.setDeliveryTime(rs.getInt("DeliveryTime"));
                restaurant.setAddress(rs.getString("Address"));
                restaurant.setRating(rs.getDouble("Rating"));
                restaurant.setActive(rs.getBoolean("IsActive"));
                restaurant.setImagePath(rs.getString("ImagePath"));

                restaurants.add(restaurant);
            }

        } catch (SQLException e) {

            e.printStackTrace();

        }

        return restaurants;
    }

}
    