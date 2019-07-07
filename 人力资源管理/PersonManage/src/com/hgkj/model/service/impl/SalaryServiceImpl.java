package com.hgkj.model.service.impl;

import com.hgkj.model.dao.SalaryDao;
import com.hgkj.model.dao.impl.SalaryDaoImpl;
import com.hgkj.model.entity.Salary;
import com.hgkj.model.service.SalaryService;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/13 15:24
 * @Version 1.8
 */
public class SalaryServiceImpl implements SalaryService {
    private SalaryDao salaryDao = new SalaryDaoImpl();

    @Override
    public int getTotalPageService(int pageSize) {
        return salaryDao.getTotalPageDao(pageSize);
    }

    @Override
    public List<Salary> getAllSalaryService(int pageIndex, int pageSize) {
        return salaryDao.getAllSalaryDao(pageIndex, pageSize);
    }

    @Override
    public boolean deleteSalaryByIdService(int saId) {
        return salaryDao.deleteSalaryByIdDao(saId);
    }

    @Override
    public boolean insertSalaryService(Salary salary) {
        return salaryDao.insertSalaryDao(salary);
    }

    @Override
    public Salary getSalaryByIdService(int saId) {
        return salaryDao.getSalaryByIdDao(saId);
    }
}
