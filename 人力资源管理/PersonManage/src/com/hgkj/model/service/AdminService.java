package com.hgkj.model.service;

import com.hgkj.model.entity.Admin;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/6 22:01
 * @Version 1.8
 */
public interface AdminService {
    public boolean AdminLoginService(Admin admin);

    public int getTotalPageService(int pageSize);

    public List<Admin> getAllAdminService(int pageIndex, int pageSize);

    public boolean deleteAdminByIdService(int aId);

    public boolean insertAdminService(Admin admin);

    public boolean updateAdminService(Admin admin);

    public Admin getAdminByIdService(int aId);

    public Admin getAdminByNameService(String aName);
}
