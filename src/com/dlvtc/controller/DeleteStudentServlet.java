package com.dlvtc.controller;

import com.dlvtc.dao.StudenDAOImpl;
import com.dlvtc.dao.StudentDAO;
import com.dlvtc.model.Student;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteStudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int Id = Integer.parseInt(req.getParameter("id"));
        Student stu = new Student();
        stu.setId(Id);

        StudentDAO sd = new StudenDAOImpl();
        int flag = -1;
        try {
            flag = sd.remove(stu);
            if (flag >= 0) {
                req.getRequestDispatcher("/delete_success.jsp").forward(req, resp);
            } else {
                req.getRequestDispatcher("/delete_fail.jsp").forward(req, resp);
            }
        } catch (Exception e) {
            e.printStackTrace();
            req.getRequestDispatcher("/delete_fail.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
