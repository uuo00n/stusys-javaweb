package com.dlvtc.controller;

import com.dlvtc.dao.StudenDAOImpl;
import com.dlvtc.dao.StudentDAO;
import com.dlvtc.model.Student;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ManageStudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        StudentDAO ad = new StudenDAOImpl();
        try {
            List<Student> list = ad.findAll();
            req.setAttribute("list", list);
            req.getRequestDispatcher("/manageStudent.jsp").forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
            req.getRequestDispatcher("/findAll_fail.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }
}
