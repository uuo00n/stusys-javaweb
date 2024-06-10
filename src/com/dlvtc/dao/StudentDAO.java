package com.dlvtc.dao;

import com.dlvtc.model.Student;

import java.util.List;

public interface StudentDAO {
    public abstract int insert(Student stu) throws Exception;

    public abstract int remove(Student stu) throws Exception;

    public abstract int update(Student stu) throws Exception;

    public abstract Student findById(Student stu) throws Exception;

    public abstract List<Student> findAll() throws Exception;
}
