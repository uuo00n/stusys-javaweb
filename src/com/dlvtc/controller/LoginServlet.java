package com.dlvtc.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.mindrot.jbcrypt.BCrypt;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String captcha = request.getParameter("captcha");
        String captchaSession = (String) request.getSession().getAttribute("captcha");

        if (captcha == null || !captcha.equalsIgnoreCase(captchaSession)) {
            request.setAttribute("errorMessage", "验证码错误");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        try {
            if (authenticateUser(username, password)) {
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                // 登录成功，重定向到首页
                response.sendRedirect("/main/index_stu.jsp");
            } else {
                request.setAttribute("errorMessage", "无效的用户名或密码");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "数据库连接错误");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    private boolean authenticateUser(String username, String password) throws SQLException, ClassNotFoundException {
        String jdbcUrl = "jdbc:mysql://127.0.0.1:3306/stu-sys-javaweb?useSSL=false&serverTimezone=UTC";
        String dbUser = "hjb";
        String dbPassword = "hjb666";

        Class.forName("com.mysql.jdbc.Driver");  // 使用 com.mysql.cj.jdbc.Driver
        try (Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
             PreparedStatement ps = conn.prepareStatement("SELECT password FROM users WHERE username = ?")) {
            ps.setString(1, username);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    String storedPassword = rs.getString("password");
                    return BCrypt.checkpw(password, storedPassword);
                }
            }
        }
        return false;
    }
}
