package com.dlvtc.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/captchaServlet")
public class CaptchaServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int width = 100;
        int height = 40;
        BufferedImage bufferedImage = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
        Graphics g = bufferedImage.getGraphics();

        // 生成背景
        g.setColor(Color.LIGHT_GRAY);
        g.fillRect(0, 0, width, height);

        // 生成验证码字符
        String captcha = generateCaptcha(6);
        HttpSession session = request.getSession();
        session.setAttribute("captcha", captcha);

        // 生成验证码图片
        g.setColor(Color.BLACK);
        g.setFont(new Font("Arial", Font.BOLD, 20));
        g.drawString(captcha, 15, 25);

        g.dispose();
        response.setContentType("image/jpeg");
        ImageIO.write(bufferedImage, "jpg", response.getOutputStream());
    }

    private String generateCaptcha(int length) {
        String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        StringBuilder captcha = new StringBuilder();
        for (int i = 0; i < length; i++) {
            int index = (int) (Math.random() * chars.length());
            captcha.append(chars.charAt(index));
        }
        return captcha.toString();
    }
}
