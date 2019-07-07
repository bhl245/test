package com.hgkj.model.service;

import com.hgkj.model.entity.Department;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/7 14:41
 * @Version 1.8
 */
public interface DepartmentService {
    public int getTotalPageService(int pageSize);

    public List<Department> getAllDepartmentService(int pageIndex, int pageSize);

    public List<Department> getAllDepartmentDao();

    public boolean deleteDepartmentByIdService(int dId);

    public boolean insertDepartmentService(Department department);

    public Department getDepartmentByIdService(int dId);

    public int getDepartmentNumService(int dId);
}
