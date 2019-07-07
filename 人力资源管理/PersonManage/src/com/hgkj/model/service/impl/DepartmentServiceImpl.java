package com.hgkj.model.service.impl;

import com.hgkj.model.dao.DepartmentDao;
import com.hgkj.model.dao.impl.DepartmentDaoImpl;
import com.hgkj.model.entity.Department;
import com.hgkj.model.service.DepartmentService;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/7 14:56
 * @Version 1.8
 */
public class DepartmentServiceImpl implements DepartmentService {
    private DepartmentDao departmentDao = new DepartmentDaoImpl();

    @Override
    public int getTotalPageService(int pageSize) {
        return departmentDao.getTotalPageDao(pageSize);
    }

    @Override
    public List<Department> getAllDepartmentService(int pageIndex, int pageSize) {
        return departmentDao.getAllDepartmentDao(pageIndex, pageSize);
    }

    @Override
    public List<Department> getAllDepartmentDao() {
        return departmentDao.getAllDepartmentDao();
    }

    @Override
    public boolean deleteDepartmentByIdService(int dId) {
        return departmentDao.deleteDepartmentByIdDao(dId);
    }

    @Override
    public boolean insertDepartmentService(Department department) {
        return departmentDao.insertDepartmentDao(department);
    }

    @Override
    public Department getDepartmentByIdService(int dId) {
        return departmentDao.getDepartmentByIdDao(dId);
    }

    @Override
    public int getDepartmentNumService(int dId) {
        return departmentDao.getDepartmentNumDao(dId);
    }
}
