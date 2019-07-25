package com.hgkj.model.dao;

import com.hgkj.model.entity.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentMapper {
    /**
     * 学生登录
     *
     * @param student
     * @return
     */
    public Student studentLoginDao(Student student);

    /**
     * 学生修改密码
     *
     * @param student
     */
    public void studentPwdUpdateDao(Student student);

    /**
     * 根据Id查询学生信息
     *
     * @param studentId
     * @return
     */
    public Student getStudentByIdDao(int studentId);

    /**
     * 查询所有学生信息
     *
     * @return
     */
    public List<Student> allStudentDao();

    /**
     * 添加学生信息
     *
     * @param student
     */
    public void insertStudentDao(Student student);

    /**
     * 删除学生信息
     *
     * @param studentId
     */
    public void deleteStudentDao(int studentId);

    /**
     * 修改学生信息
     *
     * @param student
     */
    public void updateStudentDao(Student student);

    /**
     * 根据学生姓名模糊查询
     *
     * @param studentState
     * @param studentName
     * @return
     */
    public List<Student> cascadeStudentNameDao(@Param("studentState") String studentState,
                                               @Param("studentName") String studentName);

    /**
     * 根据学生用户名模糊查询
     *
     * @param studentState
     * @param studentUsername
     * @return
     */
    public List<Student> cascadeStudentUsernameDao(@Param("studentState") String studentState,
                                                   @Param("studentUsername") String studentUsername);

    /**
     * 根据学生班级模糊查询
     *
     * @param studentState
     * @param studentClass
     * @return
     */
    public List<Student> cascadeStudentClassDao(@Param("studentState") String studentState,
                                                @Param("studentClass") String studentClass);

    /**
     * 根据用户名查询学生信息
     *
     * @param studentUsername
     * @return
     */
    public Student getStudentUsernameDao(String studentUsername);

    /**
     * 修改学生宿舍信息
     *
     * @param domitoryId
     */
    public void updateStudentByDomitoryDao(int domitoryId);
}