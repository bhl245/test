package com.hgkj.controler.action;

import com.hgkj.model.entity.Admin;
import com.hgkj.model.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

/**
 * @Author: 卞虹霖
 * @Date: 2019/7/17 11:09
 * @Version 1.8
 */
@Controller
@RequestMapping("/")
public class AdminAction {
    @Autowired
    private AdminService adminService;

    @RequestMapping("adminPwdUpdate")
    public String adminPwdUpdate(@RequestParam String Password2, HttpSession session) {
        Admin admin = (Admin) session.getAttribute("admin1");
        admin.setAdminPassword(Password2);
        adminService.adminPwdUpdateService(admin);
        return "redirect:Login.jsp";
    }
}
