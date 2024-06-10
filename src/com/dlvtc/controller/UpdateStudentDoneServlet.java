package com.dlvtc.controller;

import com.dlvtc.dao.StudenDAOImpl;
import com.dlvtc.dao.StudentDAO;
import com.dlvtc.model.Student;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UpdateStudentDoneServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        int Id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String sex = req.getParameter("sex");
        int age = Integer.parseInt(req.getParameter("age"));
        float weight = Float.parseFloat(req.getParameter("weight"));
        float height = Float.parseFloat(req.getParameter("height"));

        Student stu = new Student();
        stu.setId(Id);
        stu.setName(name);
        stu.setSex(sex);
        stu.setAge(age);
        stu.setWeight(weight);
        stu.setHeight(height);

        StudentDAO sd = new StudenDAOImpl();
        try {
            int count = sd.update(stu);
            if (count >= 0) {
                req.getRequestDispatcher("/updateStudent_success.jsp").forward(req, resp);
            } else {
                req.getRequestDispatcher("/updateStudent_fail.jsp").forward(req, resp);
            }
        } catch (Exception e) {
            e.printStackTrace();
            req.getRequestDispatcher("/updateStudent_fail.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
