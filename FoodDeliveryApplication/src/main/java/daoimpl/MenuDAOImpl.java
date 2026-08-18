package daoimpl;

import dao.MenuDAO;
import model.Menu;
import util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MenuDAOImpl implements MenuDAO {

    @Override
    public int addMenu(Menu menu) {

        String sql = "INSERT INTO Menu(RestaurantID,ItemName,Description,Price,IsAvailable,ImagePath) VALUES(?,?,?,?,?,?)";

        try (
                Connection con = DBConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(sql)
        ) {

            ps.setInt(1, menu.getRestaurantID());
            ps.setString(2, menu.getItemName());
            ps.setString(3, menu.getDescription());
            ps.setDouble(4, menu.getPrice());
            ps.setBoolean(5, menu.isAvailable());
            ps.setString(6, menu.getImagePath());

            return ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return 0;
    }

    @Override
    public Menu getMenu(int menuID) {

        Menu menu = null;

        String sql = "SELECT * FROM Menu WHERE MenuID=?";

        try (
                Connection con = DBConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(sql)
        ) {

            ps.setInt(1, menuID);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                menu = new Menu();

                menu.setMenuID(rs.getInt("MenuID"));
                menu.setRestaurantID(rs.getInt("RestaurantID"));
                menu.setItemName(rs.getString("ItemName"));
                menu.setDescription(rs.getString("Description"));
                menu.setPrice(rs.getDouble("Price"));
                menu.setAvailable(rs.getBoolean("IsAvailable"));
                menu.setImagePath(rs.getString("ImagePath"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return menu;
    }

    @Override
    public List<Menu> getAllMenus() {

        List<Menu> menus = new ArrayList<>();

        String sql = "SELECT * FROM Menu";

        try (
                Connection con = DBConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery()
        ) {

            while (rs.next()) {

                Menu menu = new Menu();

                menu.setMenuID(rs.getInt("MenuID"));
                menu.setRestaurantID(rs.getInt("RestaurantID"));
                menu.setItemName(rs.getString("ItemName"));
                menu.setDescription(rs.getString("Description"));
                menu.setPrice(rs.getDouble("Price"));
                menu.setAvailable(rs.getBoolean("IsAvailable"));
                menu.setImagePath(rs.getString("ImagePath"));

                menus.add(menu);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return menus;
    }

    @Override
    public List<Menu> getMenusByRestaurant(int restaurantID) {

        List<Menu> menus = new ArrayList<>();

        String sql = "SELECT * FROM Menu WHERE RestaurantID=? AND IsAvailable=1";

        try (
                Connection con = DBConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(sql)
        ) {

            ps.setInt(1, restaurantID);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Menu menu = new Menu();

                menu.setMenuID(rs.getInt("MenuID"));
                menu.setRestaurantID(rs.getInt("RestaurantID"));
                menu.setItemName(rs.getString("ItemName"));
                menu.setDescription(rs.getString("Description"));
                menu.setPrice(rs.getDouble("Price"));
                menu.setAvailable(rs.getBoolean("IsAvailable"));
                menu.setImagePath(rs.getString("ImagePath"));

                menus.add(menu);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return menus;
    }

    @Override
    public int updateMenu(Menu menu) {

        String sql = "UPDATE Menu SET ItemName=?,Description=?,Price=?,IsAvailable=?,ImagePath=? WHERE MenuID=?";

        try (
                Connection con = DBConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(sql)
        ) {

            ps.setString(1, menu.getItemName());
            ps.setString(2, menu.getDescription());
            ps.setDouble(3, menu.getPrice());
            ps.setBoolean(4, menu.isAvailable());
            ps.setString(5, menu.getImagePath());
            ps.setInt(6, menu.getMenuID());

            return ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return 0;
    }

    @Override
    public int deleteMenu(int menuID) {

        String sql = "DELETE FROM Menu WHERE MenuID=?";

        try (
                Connection con = DBConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(sql)
        ) {

            ps.setInt(1, menuID);

            return ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return 0;
    }
}