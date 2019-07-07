package com.hgkj.model.dao;

import com.hgkj.model.entity.Department;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/7 14:34
 * @Version 1.8
 */
public interface DepartmentDao {
    public int getTotalPageDao(int pageSize);

    public List<Department> getAllDepartmentDao(int pageIndex, int pageSize);

    public List<Department> getAllDepartmentDao();

    public boolean deleteDepartmentByIdDao(int dId);

    public boolean insertDepartmentDao(Department department);

    public Department getDepartmentByIdDao(int dId);

    public int getDepartmentNumDao(int dId);
}
