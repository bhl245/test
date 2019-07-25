package com.hgkj.model.dao;

import com.hgkj.model.entity.Teacher;

import java.util.List;

public interface TeacherMapper {
    /**
     * 楼宇管理员登录
     *
     * @param teacher
     * @return
     */
    public Teacher teacherLoginDao(Teacher teacher);

    /**
     * 楼宇管理员修改密码
     *
     * @param teacher
     */
    public void teacherPwdUpdateDao(Teacher teacher);

    /**
     * 根据Id查询楼宇管理员信息
     *
     * @param teacherId
     * @return
     */
    public Teacher getTeacherByIdDao(int teacherId);

    /**
     * 查询所有的楼宇管理员
     *
     * @return
     */
    public List<Teacher> allTeacherDao();

    /**
     * 添加楼宇管理员
     *
     * @param teacher
     */
    public void insertTeacherDao(Teacher teacher);

    /**
     * 删除楼宇管理员
     *
     * @param teacherId
     */
    public void deleteTeacherDao(int teacherId);

    /**
     * 修改楼宇管理员信息
     *
     * @param teacher
     */
    public void updateTeacherDao(Teacher teacher);

    /**
     * 根据姓名模糊查询
     *
     * @return
     */
    public List<Teacher> cascadeTeacherNameDao(String teacherName);

    /**
     * 根据电话模糊查询
     *
     * @return
     */
    public List<Teacher> cascadeTeacherTelDao(String teacherTel);

    /**
     * 根据用户名模糊查询
     *
     * @return
     */
    public List<Teacher> cascadeTeacherUsernameDao(String teacherUsername);
}