package com.hgkj.model.service;

import com.hgkj.model.entity.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/7/16 19:16
 * @Version 1.8
 */
public interface StudentService {
    /**
     * 学生登录
     *
     * @param student
     * @return
     */
    public Student studentLoginService(Student student);

    /**
     * 学生修改密码
     *
     * @param student
     */
    public void studentPwdUpdateService(Student student);

    /**
     * 根据Id查询学生信息
     *
     * @param studentId
     * @return
     */
    public Student getStudentByIdService(int studentId);

    /**
     * 查询所有学生信息
     *
     * @return
     */
    public List<Student> allStudentService();

    /**
     * 添加学生信息
     *
     * @param student
     */
    public void insertStudentService(Student student);

    /**
     * 删除学生信息
     *
     * @param studentId
     */
    public void deleteStudentService(int studentId);

    /**
     * 修改学生信息
     *
     * @param student
     */
    public void updateStudentService(Student student);

    /**
     * 根据学生姓名模糊查询
     *
     * @param studentState
     * @param studentName
     * @return
     */
    /**
     * 根据学生姓名模糊查询
     *
     * @param studentState
     * @param studentName
     * @return
     */
    public List<Student> cascadeStudentNameService(@Param("studentState") String studentState,
                                                   @Param("studentName") String studentName);

    /**
     * 根据学生用户名模糊查询
     *
     * @param studentState
     * @param studentUsername
     * @return
     */
    public List<Student> cascadeStudentUsernameService(@Param("studentState") String studentState,
                                                       @Param("studentUsername") String studentUsername);

    /**
     * 根据学生班级模糊查询
     *
     * @param studentState
     * @param studentClass
     * @return
     */
    public List<Student> cascadeStudentClassService(@Param("studentState") String studentState,
                                                    @Param("studentClass") String studentClass);

    /**
     * 根据用户名查询学生信息
     *
     * @param studentUsername
     * @return
     */
    public Student getStudentUsernameService(String studentUsername);

    /**
     * 修改学生宿舍信息
     *
     * @param domitoryId
     */
    public void updateStudentByDomitoryService(int domitoryId);
}
