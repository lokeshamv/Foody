package dao;

import java.util.List;
import model.User;

public interface UserDAO {

    // Insert a new user
    int addUser(User user);

    // Get user by ID
    User getUser(int userID);

    // Get all users
    List<User> getAllUsers();

    // Update user details
    int updateUser(User user);

    // Delete user
    int deleteUser(int userID);

    // Validate login
    User validateUser(String email, String password);
}