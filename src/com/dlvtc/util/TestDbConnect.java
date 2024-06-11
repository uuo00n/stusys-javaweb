package com.dlvtc.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class TestDbConnect {
    public static void main(String[] args) {
        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            // 获取数据库连接
            connection = DbConnect.getConnection();
            if (connection != null) {
                System.out.println("数据库连接成功！");

                // 执行简单的查询
                String sql = "SELECT * from students";
                pstmt = connection.prepareStatement(sql);
                rs = pstmt.executeQuery();

                if (rs.next()) {
                    System.out.println("查询成功，结果为：" + rs.getInt(1));
                } else {
                    System.out.println("查询失败或无结果！");
                }
            } else {
                System.out.println("数据库连接失败！");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 关闭数据库资源
            DbConnect.closeDB(connection, pstmt, rs);
        }
    }
}
