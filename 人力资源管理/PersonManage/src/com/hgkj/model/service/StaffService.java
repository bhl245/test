package com.hgkj.model.service;

import com.hgkj.model.entity.Staff;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/8 10:36
 * @Version 1.8
 */
public interface StaffService {
    public int getTotalPageService(int pageSize);

    public List<Staff> getAllStaffService(int pageIndex, int pageSize);

    public List<Staff> getAllStaffDao();

    public boolean deleteStaffByIdService(int stId);

    public boolean insertStaffService(Staff staff);

    public boolean updateStaffService(Staff staff);

    public Staff getStaffByIdService(int stId);
}
