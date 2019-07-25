package com.hgkj.model.dao;

import com.hgkj.model.entity.Admin;

public interface AdminMapper {
    /**
     * 管理员登录
     *
     * @param admin
     * @return
     */
    public Admin adminLoginDao(Admin admin);

    /**
     * 管理员修改密码
     *
     * @param admin
     */
    public void adminPwdUpdateDao(Admin admin);

    /**
     * 根据Id查询管理员信息
     *
     * @param adminId
     * @return
     */
    public Admin getAdminByIdDao(int adminId);
}