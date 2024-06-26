package com.dlvtc.controller;

import com.dlvtc.dao.StudentDAOImpl;
import com.dlvtc.dao.StudentDAO;
import com.dlvtc.model.Student;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SelectByIdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        StudentDAO sd = new StudentDAOImpl();
        int Id = Integer.parseInt(req.getParameter("id"));
        Student stu = new Student();
        stu.setId(Id);
        try {
            Student student = sd.findById(stu);
            if (student != null) {
                req.setAttribute("student", student);
                req.getRequestDispatcher("/findeById_success.jsp").forward(req, resp);
            } else {
                req.getRequestDispatcher("/findeById_fail.jsp").forward(req, resp);
            }
        } catch (Exception e) {
            e.printStackTrace();
            req.getRequestDispatcher("/findeById_fail.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
