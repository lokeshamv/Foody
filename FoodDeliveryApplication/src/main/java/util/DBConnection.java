package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    // Database URL
    private static final String URL = "jdbc:mysql://localhost:3306/fooddeliveryapplication";

    // Database Username
    private static final String USER = "root";

    // Database Password
    private static final String PASSWORD = ;

    // Method to establish connection
    public static Connection getConnection() {

        Connection connection = null;

        try {

            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Create Connection
            connection = DriverManager.getConnection(URL, USER, PASSWORD);

            System.out.println("✅ Database Connected Successfully!");

        } catch (ClassNotFoundException e) {

            System.out.println("❌ MySQL JDBC Driver Not Found!");
            e.printStackTrace();

        } catch (SQLException e) {

            System.out.println("❌ Database Connection Failed!");
            e.printStackTrace();

        }

        return connection;
    }

    // Optional: Close Connection
    public static void closeConnection(Connection connection) {

        if (connection != null) {

            try {

                connection.close();

                System.out.println("Connection Closed.");

            } catch (SQLException e) {

                e.printStackTrace();

            }

        }

    }

}