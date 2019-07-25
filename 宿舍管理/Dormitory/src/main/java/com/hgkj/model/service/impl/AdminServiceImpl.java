package com.hgkj.model.service.impl;

import com.hgkj.model.dao.AdminMapper;
import com.hgkj.model.entity.Admin;
import com.hgkj.model.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @Author: 卞虹霖
 * @Date: 2019/7/16 16:14
 * @Version 1.8
 */
@Service
@Transactional
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminMapper adminMapper;

    public void setAdminMapper(AdminMapper adminMapper) {
        this.adminMapper = adminMapper;
    }

    @Override
    public Admin adminLoginService(Admin admin) {
        return adminMapper.adminLoginDao(admin);
    }

    @Override
    public void adminPwdUpdateService(Admin admin) {
        adminMapper.adminPwdUpdateDao(admin);
    }

    @Override
    public Admin getAdminByIdService(int adminId) {
        return adminMapper.getAdminByIdDao(adminId);
    }
}
