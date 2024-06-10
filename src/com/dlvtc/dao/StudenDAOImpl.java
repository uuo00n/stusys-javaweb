package com.dlvtc.dao;

import com.dlvtc.model.Student;
import com.dlvtc.util.DbConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class StudenDAOImpl implements StudentDAO {
    protected static final String FIELDS_INSERT = "id,name,sex,age,weight,hight";
    protected static String INSERT_SQL = "insert into students ("
            + FIELDS_INSERT + ")" + "values(?,?,?,?,?,?)";
    protected static String SELECT_SQL = "select " + FIELDS_INSERT
            + "from students where id=?";
    protected static String UPDATE_SQL = "update students set id=?,name=?,sex=?,age=?,weight=?,hight=? where id=?";
    protected static String DELETE_SQL = "delete from students where id=?";

    @Override
    public int insert(Student stu) throws Exception {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int flag = 0;
        try {
            con = DbConnect.getConnection();
            pstmt = con.prepareStatement(INSERT_SQL);
            pstmt.setInt(1, stu.getId());
            pstmt.setString(2, stu.getName());
            pstmt.setString(3, stu.getSex());
            pstmt.setInt(4, stu.getAge());
            pstmt.setFloat(5, stu.getWeight());
            pstmt.setFloat(6, stu.getHeight());
            flag = pstmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            DbConnect.closeDB(con, pstmt, rs);
        }
        return flag;
    }

    @Override
    public int remove(Student stu) throws Exception {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            con = DbConnect.getConnection();
            pstmt = con.prepareStatement(DELETE_SQL);
            pstmt.setInt(1, stu.getId());
            return (pstmt.executeUpdate());
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        } finally {
            DbConnect.closeDB(con, pstmt, rs);
        }
    }

    @Override
    public int update(Student stu) throws Exception {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            con = DbConnect.getConnection();
            pstmt = con.prepareStatement(UPDATE_SQL);
            pstmt.setInt(1, stu.getId());
            pstmt.setString(2, stu.getName());
            pstmt.setString(3, stu.getSex());
            pstmt.setInt(4, stu.getAge());
            pstmt.setFloat(5, stu.getWeight());
            pstmt.setFloat(6, stu.getHeight());
            pstmt.setInt(7, stu.getId());
            int rowCount = pstmt.executeUpdate();
            if (rowCount == 0) {
                throw new Exception("Update Error:Student Id:" + stu.getId());
            }
            return rowCount;
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        } finally {
            DbConnect.closeDB(con, pstmt, rs);
        }
    }

    @Override
    public Student findById(Student stu) throws Exception {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        Student stu2 = null;
        try {
            con = DbConnect.getConnection();
            pstmt = con.prepareStatement(SELECT_SQL);
            pstmt.setInt(1, stu.getId());
            rs = pstmt.executeQuery();
            if (rs.next()) {
                stu2 = new Student();
                stu2.setId(rs.getInt(1));
                stu2.setName(rs.getString(2));
                stu2.setSex(rs.getString(3));
                stu2.setAge(rs.getInt(4));
                stu2.setWeight(rs.getFloat(5));
                stu2.setHeight(rs.getFloat(6));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            DbConnect.closeDB(con, pstmt, rs);
        }
        return stu2;
    }

    @Override
    public List<Student> findAll() throws Exception {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<Student> students = new ArrayList<Student>();
        con = DbConnect.getConnection();
        pstmt = con.prepareStatement("select * from students");
        rs = pstmt.executeQuery();
        while (rs.next()) {
            Student stu2 = new Student();
            stu2.setId(rs.getInt(1));
            stu2.setName(rs.getString(2));
            stu2.setSex(rs.getString(3));
            stu2.setAge(rs.getInt(4));
            stu2.setWeight(rs.getFloat(5));
            stu2.setHeight(rs.getFloat(6));
            students.add(stu2);
        }
        DbConnect.closeDB(con, pstmt, rs);
        return students;
    }
}
