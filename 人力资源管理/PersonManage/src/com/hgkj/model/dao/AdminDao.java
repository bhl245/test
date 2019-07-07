package com.hgkj.model.dao;

import com.hgkj.model.entity.Admin;

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/6 21:59
 * @Version 1.8
 */
public interface AdminDao {
    public boolean AdminLoginDao(Admin admin);

    public int getTotalPageDao(int pageSize);

    public List<Admin> getAllAdminDao(int pageIndex, int pageSize);

    public boolean deleteAdminByIdDao(int aId);

    public boolean insertAdminDao(Admin admin);

    public boolean updateAdminDao(Admin admin);

    public Admin getAdminByIdDao(int aId);

    public Admin getAdminByNameDao(String aName);
}
