package com.hgkj.model.service.impl;

import com.hgkj.model.dao.TeacherMapper;
import com.hgkj.model.entity.Teacher;
import com.hgkj.model.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/7/16 19:13
 * @Version 1.8
 */
@Service
@Transactional
public class TeacherServiceImpl implements TeacherService {
    @Autowired
    private TeacherMapper teacherMapper;

    public void setTeacherMapper(TeacherMapper teacherMapper) {
        this.teacherMapper = teacherMapper;
    }

    @Override
    public Teacher teacherLoginService(Teacher teacher) {
        return teacherMapper.teacherLoginDao(teacher);
    }

    @Override
    public void teacherPwdUpdateService(Teacher teacher) {
        teacherMapper.teacherPwdUpdateDao(teacher);
    }

    @Override
    public Teacher getTeacherByIdService(int teacherId) {
        return teacherMapper.getTeacherByIdDao(teacherId);
    }

    @Override
    public List<Teacher> allTeacherService() {
        return teacherMapper.allTeacherDao();
    }

    @Override
    public void insertTeacherService(Teacher teacher) {
        teacherMapper.insertTeacherDao(teacher);
    }

    @Override
    public void deleteTeacherService(int teacherId) {
        teacherMapper.deleteTeacherDao(teacherId);
    }

    @Override
    public void updateTeacherService(Teacher teacher) {
        teacherMapper.updateTeacherDao(teacher);
    }

    @Override
    public List<Teacher> cascadeTeacherNameService(String teacherName) {
        return teacherMapper.cascadeTeacherNameDao(teacherName);
    }

    @Override
    public List<Teacher> cascadeTeacherTelService(String teacherTel) {
        return teacherMapper.cascadeTeacherTelDao(teacherTel);
    }

    @Override
    public List<Teacher> cascadeTeacherUsernameService(String teacherUsername) {
        return teacherMapper.cascadeTeacherUsernameDao(teacherUsername);
    }
}
