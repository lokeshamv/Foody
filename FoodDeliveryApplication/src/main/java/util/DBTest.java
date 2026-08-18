package util;

import java.sql.Connection;

public class DBTest {

    public static void main(String[] args) {

        Connection connection = DBConnection.getConnection();

        if (connection != null) {

            System.out.println("Connection Test Successful!");

            DBConnection.closeConnection(connection);

        } else {

            System.out.println("Connection Test Failed!");

        }

    }

}