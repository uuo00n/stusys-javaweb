package com.dlvtc.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DbConnect {
    private static String driverName = "com.mysql.jdbc.Driver"; // 修改驱动名称为MySQL 8的驱动名称
    private static String user = "root";
    private static String password = "123456";
    private static String dbName = "stusysjavaweb";

    public static Connection getConnection() {
        String url1 = "jdbc:mysql://localhost:3306/" + dbName;
        String url2 = "?user=" + user + "&password=" + password;
        String url3 = "&useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";
        String url = url1 + url2 + url3;
        try {
            Class.forName(driverName);
            Connection conn = DriverManager.getConnection(url);
            if (conn != null) {
                System.out.println("Database connected successfully.");
            } else {
                System.out.println("Failed to connect to the database.");
            }
            return conn;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void closeDB(Connection con, PreparedStatement pstmt, ResultSet rs) {
        try {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
