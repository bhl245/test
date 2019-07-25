package com.hgkj.model.service;

import com.hgkj.model.entity.Teacher;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/7/16 19:13
 * @Version 1.8
 */
public interface TeacherService {
    /**
     * 楼宇管理员登录
     *
     * @param teacher
     * @return
     */
    public Teacher teacherLoginService(Teacher teacher);

    /**
     * 楼宇管理员修改密码
     *
     * @param teacher
     */
    public void teacherPwdUpdateService(Teacher teacher);

    /**
     * 根据Id查询楼宇管理员信息
     *
     * @param teacherId
     * @return
     */
    public Teacher getTeacherByIdService(int teacherId);

    /**
     * 查询所有的楼宇管理员
     *
     * @return
     */
    public List<Teacher> allTeacherService();

    /**
     * 添加楼宇管理员
     *
     * @param teacher
     */
    public void insertTeacherService(Teacher teacher);

    /**
     * 删除楼宇管理员
     *
     * @param teacherId
     */
    public void deleteTeacherService(int teacherId);

    /**
     * 修改楼宇管理员信息
     *
     * @param teacher
     */
    public void updateTeacherService(Teacher teacher);

    /**
     * 根据姓名模糊查询
     *
     * @return
     */
    public List<Teacher> cascadeTeacherNameService(String teacherName);

    /**
     * 根据电话模糊查询
     *
     * @return
     */
    public List<Teacher> cascadeTeacherTelService(String teacherTel);

    /**
     * 根据用户名模糊查询
     *
     * @return
     */
    public List<Teacher> cascadeTeacherUsernameService(String teacherUsername);
}
