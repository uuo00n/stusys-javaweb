package com.dlvtc.controller;

import com.dlvtc.dao.StudentDAOImpl;
import com.dlvtc.dao.StudentDAO;
import com.dlvtc.model.Student;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class InsertServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
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
            if (sd.insert(stu) > 0) {
                req.getRequestDispatcher("/insert_success.jsp").forward(req, resp);
            } else {
                req.getRequestDispatcher("/insert_fail.jsp").forward(req, resp);
            }
        } catch (Exception e) {
            req.getRequestDispatcher("/insert_fail.jsp").forward(req, resp);
            e.printStackTrace();
        }
    }
}
