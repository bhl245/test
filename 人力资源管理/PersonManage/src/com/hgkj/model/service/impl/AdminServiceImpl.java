package com.hgkj.model.service.impl;

import com.hgkj.model.dao.AdminDao;
import com.hgkj.model.dao.impl.AdminDaoImpl;
import com.hgkj.model.entity.Admin;
import com.hgkj.model.service.AdminService;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/6 22:04
 * @Version 1.8
 */
public class AdminServiceImpl implements AdminService {
    private AdminDao adminDao = new AdminDaoImpl();

    @Override
    public boolean AdminLoginService(Admin admin) {
        return adminDao.AdminLoginDao(admin);
    }

    @Override
    public int getTotalPageService(int pageSize) {
        return adminDao.getTotalPageDao(pageSize);
    }

    @Override
    public List<Admin> getAllAdminService(int pageIndex, int pageSize) {
        return adminDao.getAllAdminDao(pageIndex, pageSize);
    }

    @Override
    public boolean deleteAdminByIdService(int aId) {
        return adminDao.deleteAdminByIdDao(aId);
    }

    @Override
    public boolean insertAdminService(Admin admin) {
        return adminDao.insertAdminDao(admin);
    }

    @Override
    public boolean updateAdminService(Admin admin) {
        return adminDao.updateAdminDao(admin);
    }

    @Override
    public Admin getAdminByIdService(int aId) {
        return adminDao.getAdminByIdDao(aId);
    }

    @Override
    public Admin getAdminByNameService(String aName) {
        return adminDao.getAdminByNameDao(aName);
    }

}
