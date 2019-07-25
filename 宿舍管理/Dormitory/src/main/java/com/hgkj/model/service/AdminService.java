package com.hgkj.model.service;

import com.hgkj.model.entity.Admin;

/**
 * @Author: 卞虹霖
 * @Date: 2019/7/16 16:13
 * @Version 1.8
 */
public interface AdminService {
    /**
     * 管理员登录
     *
     * @param admin
     * @return
     */
    public Admin adminLoginService(Admin admin);

    /**
     * 管理员修改密码
     *
     * @param admin
     */
    public void adminPwdUpdateService(Admin admin);

    /**
     * 根据Id查询管理员信息
     *
     * @param adminId
     * @return
     */
    public Admin getAdminByIdService(int adminId);
}
