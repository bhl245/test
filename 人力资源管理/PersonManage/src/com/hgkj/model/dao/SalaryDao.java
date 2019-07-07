package com.hgkj.model.dao;

import com.hgkj.model.entity.Salary;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/13 14:30
 * @Version 1.8
 */
public interface SalaryDao {
    public int getTotalPageDao(int pageSize);

    public List<Salary> getAllSalaryDao(int pageIndex, int pageSize);

    public boolean deleteSalaryByIdDao(int saId);

    public boolean insertSalaryDao(Salary salary);

    public Salary getSalaryByIdDao(int saId);
}
