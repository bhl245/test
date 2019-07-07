package com.hgkj.model.service.impl;

import com.hgkj.model.dao.StaffDao;
import com.hgkj.model.dao.impl.StaffDaoImpl;
import com.hgkj.model.entity.Staff;
import com.hgkj.model.service.StaffService;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/8 15:43
 * @Version 1.8
 */
public class StaffServiceImpl implements StaffService {
    private StaffDao staffDao = new StaffDaoImpl();

    @Override
    public int getTotalPageService(int pageSize) {
        return staffDao.getTotalPageDao(pageSize);
    }

    @Override
    public List<Staff> getAllStaffService(int pageIndex, int pageSize) {
        return staffDao.getAllStaffDao(pageIndex, pageSize);
    }

    @Override
    public List<Staff> getAllStaffDao() {
        return staffDao.getAllStaffDao();
    }

    @Override
    public boolean deleteStaffByIdService(int stId) {
        return staffDao.deleteStaffByIdDao(stId);
    }

    @Override
    public boolean insertStaffService(Staff staff) {
        return staffDao.insertStaffDao(staff);
    }

    @Override
    public boolean updateStaffService(Staff staff) {
        return staffDao.updateStaffDao(staff);
    }

    @Override
    public Staff getStaffByIdService(int stId) {
        return staffDao.getStaffByIdDao(stId);
    }
}
