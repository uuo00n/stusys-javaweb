package com.dlvtc.util;

import org.mindrot.jbcrypt.BCrypt;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserInsertion {
    public static void main(String[] args) {
        String username = "admin";
        String plainPassword = "hjb666";
        String hashedPassword = BCrypt.hashpw(plainPassword, BCrypt.gensalt());

        String dbURL = "jdbc:mysql://127.0.0.1:3306/stu-sys-javaweb";
        String dbUser = "hjb";
        String dbPassword = "hjb666";

        try (Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword)) {
            String sql = "INSERT INTO users (username, password) VALUES (?, ?)";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setString(1, username);
                stmt.setString(2, hashedPassword);
                stmt.executeUpdate();
                System.out.println("User inserted successfully!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
