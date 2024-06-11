package com.dlvtc.dao;

import com.dlvtc.model.Student;
import com.dlvtc.util.DbConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StudentDAOImpl implements StudentDAO {
    protected static final String FIELDS_INSERT = "id, name, sex, age, weight, height";
    protected static String INSERT_SQL = "INSERT INTO students (" + FIELDS_INSERT + ") VALUES (?, ?, ?, ?, ?, ?)";
    protected static String SELECT_SQL = "SELECT " + FIELDS_INSERT + " FROM students WHERE id = ?";
    protected static String UPDATE_SQL = "UPDATE students SET name = ?, sex = ?, age = ?, weight = ?, height = ? WHERE id = ?";
    protected static String DELETE_SQL = "DELETE FROM students WHERE id = ?";

    @Override
    public int insert(Student stu) throws SQLException {
        try (Connection con = DbConnect.getConnection();
             PreparedStatement pstmt = con.prepareStatement(INSERT_SQL)) {
            pstmt.setInt(1, stu.getId());
            pstmt.setString(2, stu.getName());
            pstmt.setString(3, stu.getSex());
            pstmt.setInt(4, stu.getAge());
            pstmt.setFloat(5, stu.getWeight());
            pstmt.setFloat(6, stu.getHeight());
            return pstmt.executeUpdate();
        }
    }

    @Override
    public int remove(Student stu) throws SQLException {
        try (Connection con = DbConnect.getConnection();
             PreparedStatement pstmt = con.prepareStatement(DELETE_SQL)) {
            pstmt.setInt(1, stu.getId());
            return pstmt.executeUpdate();
        }
    }

    @Override
    public int update(Student stu) throws SQLException {
        try (Connection con = DbConnect.getConnection();
             PreparedStatement pstmt = con.prepareStatement(UPDATE_SQL)) {
            pstmt.setString(1, stu.getName());
            pstmt.setString(2, stu.getSex());
            pstmt.setInt(3, stu.getAge());
            pstmt.setFloat(4, stu.getWeight());
            pstmt.setFloat(5, stu.getHeight());
            pstmt.setInt(6, stu.getId());
            int rowCount = pstmt.executeUpdate();
            if (rowCount == 0) {
                throw new SQLException("Update Error: Student Id: " + stu.getId());
            }
            return rowCount;
        }
    }

    @Override
    public Student findById(Student stu) throws SQLException {
        try (Connection con = DbConnect.getConnection();
             PreparedStatement pstmt = con.prepareStatement(SELECT_SQL)) {
            pstmt.setInt(1, stu.getId());
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    Student stu2 = new Student();
                    stu2.setId(rs.getInt("id"));
                    stu2.setName(rs.getString("name"));
                    stu2.setSex(rs.getString("sex"));
                    stu2.setAge(rs.getInt("age"));
                    stu2.setWeight(rs.getFloat("weight"));
                    stu2.setHeight(rs.getFloat("height"));
                    return stu2;
                }
            }
        }
        return null;
    }

    @Override
    public List<Student> findAll() throws SQLException {
        List<Student> students = new ArrayList<>();
        try (Connection con = DbConnect.getConnection();
             PreparedStatement pstmt = con.prepareStatement("SELECT * FROM students");
             ResultSet rs = pstmt.executeQuery()) {
            while (rs.next()) {
                Student stu2 = new Student();
                stu2.setId(rs.getInt("id"));
                stu2.setName(rs.getString("name"));
                stu2.setSex(rs.getString("sex"));
                stu2.setAge(rs.getInt("age"));
                stu2.setWeight(rs.getFloat("weight"));
                stu2.setHeight(rs.getFloat("height"));
                students.add(stu2);
            }
        }
        return students;
    }
}
