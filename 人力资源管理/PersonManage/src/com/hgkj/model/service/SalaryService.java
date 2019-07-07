package com.hgkj.model.service;

import com.hgkj.model.entity.Salary;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/13 15:17
 * @Version 1.8
 */
public interface SalaryService {
    public int getTotalPageService(int pageSize);

    public List<Salary> getAllSalaryService(int pageIndex, int pageSize);

    public boolean deleteSalaryByIdService(int saId);

    public boolean insertSalaryService(Salary salary);

    public Salary getSalaryByIdService(int saId);
}
