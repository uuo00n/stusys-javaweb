package com.dlvtc.controller;

import com.dlvtc.dao.StudentDAOImpl;
import com.dlvtc.dao.StudentDAO;
import com.dlvtc.model.Student;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UpdateStudentServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idParam = req.getParameter("Id");

        // 检查 idParam 是否为空
        if (idParam == null || idParam.isEmpty()) {
            req.getRequestDispatcher("/invalid_id.jsp").forward(req, resp);
            return;
        }

        try {
            int Id = Integer.parseInt(idParam);
            Student stu = new Student();
            stu.setId(Id);

            StudentDAO sd = new StudentDAOImpl();
            Student student = sd.findById(stu);

            if (student != null) {
                req.setAttribute("student", student);
                req.getRequestDispatcher("/updateStudent.jsp").forward(req, resp);
            } else {
                req.getRequestDispatcher("/findById_fail.jsp").forward(req, resp);
            }
        } catch (NumberFormatException e) {
            // 处理参数不是有效整数的情况
            req.getRequestDispatcher("/invalid_id.jsp").forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
            req.getRequestDispatcher("/findAll_fail.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
