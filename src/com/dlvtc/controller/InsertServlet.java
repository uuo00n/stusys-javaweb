package com.dlvtc.controller;

import com.dlvtc.dao.StudentDAOImpl;
import com.dlvtc.dao.StudentDAO;
import com.dlvtc.model.Student;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

public class InsertServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        Student stu = new Student();
        stu.setId(Integer.parseInt(req.getParameter("id")));
        stu.setName(req.getParameter("name"));
        stu.setSex(req.getParameter("sex"));
        stu.setAge(Integer.parseInt(req.getParameter("age")));
        stu.setWeight(Float.parseFloat(req.getParameter("weight")));
        stu.setHeight(Float.parseFloat(req.getParameter("height")));

        StudentDAO sd = new StudentDAOImpl();
        try {
            boolean idExists = sd.existsId(stu.getId());
            boolean nameExists = sd.existsName(stu.getName());

            if (idExists) {
                req.setAttribute("errorMessage", "学号已存在，请重新输入。");
                req.getRequestDispatcher("/insert_fail.jsp").forward(req, resp);
            } else if (nameExists) {
                req.setAttribute("errorMessage", "姓名已存在，请重新输入。");
                req.getRequestDispatcher("/insert_fail.jsp").forward(req, resp);
            } else {
                int rowCount = sd.insert(stu);
                if (rowCount > 0) {
                    req.getRequestDispatcher("/insert_success.jsp").forward(req, resp);
                } else {
                    req.setAttribute("errorMessage", "添加学生信息失败，请重试。");
                    req.getRequestDispatcher("/insert_fail.jsp").forward(req, resp);
                }
            }
        } catch (Exception e) {
            req.setAttribute("errorMessage", "数据库操作失败，请联系管理员。");
            req.getRequestDispatcher("/insert_fail.jsp").forward(req, resp);
            e.printStackTrace();
        }
    }
}
