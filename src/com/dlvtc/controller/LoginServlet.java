package com.dlvtc.controller;

import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String captcha = request.getParameter("captcha");

        HttpSession session = request.getSession();
        String storedCaptcha = (String) session.getAttribute("captcha");

        if (captcha.equals(storedCaptcha) && authenticateUser(username, password)) {
            // 登录成功，重定向到欢迎页面
            response.sendRedirect("main/index_stu.jsp");
        } else {
            // 登录失败，返回登录页面并显示错误消息
            request.setAttribute("errorMessage", "用户名、密码或验证码错误！");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    private boolean authenticateUser(String username, String password) {
        String dbURL = "jdbc:mysql://localhost:3306/stusysjavaweb";
        String dbUser = "root";
        String dbPassword = "123456";

        try (Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword)) {
            String sql = "SELECT password FROM Users WHERE username = ?";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setString(1, username);
                try (ResultSet rs = stmt.executeQuery()) {
                    if (rs.next()) {
                        String hashedPassword = rs.getString("password");
                        return BCrypt.checkpw(password, hashedPassword);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
