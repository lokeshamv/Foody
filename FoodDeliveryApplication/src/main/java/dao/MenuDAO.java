package dao;

import java.util.List;
import model.Menu;

public interface MenuDAO {

    int addMenu(Menu menu);

    Menu getMenu(int menuID);

    List<Menu> getAllMenus();

    List<Menu> getMenusByRestaurant(int restaurantID);

    int updateMenu(Menu menu);

    int deleteMenu(int menuID);

}