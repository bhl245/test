package com.hgkj.model.dao;

import com.hgkj.model.entity.Staff;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/8 10:33
 * @Version 1.8
 */
public interface StaffDao {
    public int getTotalPageDao(int pageSize);

    public List<Staff> getAllStaffDao(int pageIndex, int pageSize);

    public List<Staff> getAllStaffDao();

    public boolean deleteStaffByIdDao(int stId);

    public boolean insertStaffDao(Staff staff);

    public boolean updateStaffDao(Staff staff);

    public Staff getStaffByIdDao(int stId);
}
