package com.dlvtc.controller;

import com.dlvtc.dao.StudentDAOImpl;
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

        // 初始化参数并进行非空检查
        String idParam = req.getParameter("id");
        String name = req.getParameter("name");
        String sex = req.getParameter("sex");
        String ageParam = req.getParameter("age");
        String weightParam = req.getParameter("weight");
        String heightParam = req.getParameter("height");

        if (idParam == null || name == null || sex == null || ageParam == null || weightParam == null || heightParam == null) {
            req.setAttribute("errorMessage", "One or more required parameters are missing");
            req.getRequestDispatcher("/updateStudent_fail.jsp").forward(req, resp);
            return;
        }

        try {
            // 解析参数并进行格式检查
            int id = Integer.parseInt(idParam);
            int age = Integer.parseInt(ageParam);
            float weight = Float.parseFloat(weightParam);
            float height = Float.parseFloat(heightParam);

            // 创建学生对象并设置属性
            Student stu = new Student();
            stu.setId(id);
            stu.setName(name);
            stu.setSex(sex);
            stu.setAge(age);
            stu.setWeight(weight);
            stu.setHeight(height);

            // 执行数据库更新操作
            StudentDAO sd = new StudentDAOImpl();
            int count = sd.update(stu);

            // 判断更新结果并转发到相应页面
            if (count >= 0) {
                req.getRequestDispatcher("/updateStudent_success.jsp").forward(req, resp);
            } else {
                req.getRequestDispatcher("/updateStudent_fail.jsp").forward(req, resp);
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
            req.setAttribute("errorMessage", "Invalid number format");
            req.getRequestDispatcher("/updateStudent_fail.jsp").forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute("errorMessage", "An unexpected error occurred");
            req.getRequestDispatcher("/updateStudent_fail.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
