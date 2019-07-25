package com.hgkj.model.service.impl;

import com.hgkj.model.dao.StudentMapper;
import com.hgkj.model.entity.Student;
import com.hgkj.model.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/7/16 19:16
 * @Version 1.8
 */
@Service
@Transactional
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentMapper studentMapper;

    public void setStudentMapper(StudentMapper studentMapper) {
        this.studentMapper = studentMapper;
    }

    @Override
    public Student studentLoginService(Student student) {
        return studentMapper.studentLoginDao(student);
    }

    @Override
    public void studentPwdUpdateService(Student student) {
        studentMapper.studentPwdUpdateDao(student);
    }

    @Override
    public Student getStudentByIdService(int studentId) {
        return studentMapper.getStudentByIdDao(studentId);
    }

    @Override
    public List<Student> allStudentService() {
        return studentMapper.allStudentDao();
    }

    @Override
    public void insertStudentService(Student student) {
        studentMapper.insertStudentDao(student);
    }

    @Override
    public void deleteStudentService(int studentId) {
        studentMapper.deleteStudentDao(studentId);
    }

    @Override
    public void updateStudentService(Student student) {
        studentMapper.updateStudentDao(student);
    }

    @Override
    public List<Student> cascadeStudentNameService(String studentState, String studentName) {
        return studentMapper.cascadeStudentNameDao(studentState, studentName);
    }

    @Override
    public List<Student> cascadeStudentUsernameService(String studentState, String studentUsername) {
        return studentMapper.cascadeStudentUsernameDao(studentState, studentUsername);
    }

    @Override
    public List<Student> cascadeStudentClassService(String studentState, String studentClass) {
        return studentMapper.cascadeStudentClassDao(studentState, studentClass);
    }

    @Override
    public Student getStudentUsernameService(String studentUsername) {
        return studentMapper.getStudentUsernameDao(studentUsername);
    }

    @Override
    public void updateStudentByDomitoryService(int domitoryId) {
        studentMapper.updateStudentByDomitoryDao(domitoryId);
    }
}
