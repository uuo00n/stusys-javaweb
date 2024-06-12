package com.dlvtc.dao;

import com.dlvtc.model.Student;
import java.util.List;

public interface StudentDAO {
    int insert(Student stu) throws Exception;
    int remove(Student stu) throws Exception;
    int update(Student stu) throws Exception;
    Student findById(Student stu) throws Exception;
    List<Student> findAll() throws Exception;

    // 新添加的方法，用于检查ID是否已存在
    boolean existsId(int id) throws Exception;

    // 新添加的方法，用于检查姓名是否已存在
    boolean existsName(String name) throws Exception;
}
