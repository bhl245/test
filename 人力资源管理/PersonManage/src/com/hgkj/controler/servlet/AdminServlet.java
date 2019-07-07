package com.hgkj.controler.servlet;

import com.hgkj.model.entity.Admin;
import com.hgkj.model.service.AdminService;
import com.hgkj.model.service.impl.AdminServiceImpl;
import org.codehaus.jackson.map.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/6 22:06
 * @Version 1.8
 */
@WebServlet(name = "AdminServlet", value = "/AdminServlet")
public class AdminServlet extends HttpServlet {
    private int pageSize = 10;
    private AdminService adminService = new AdminServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String action = request.getParameter("action");
        if ("login".equals(action)) {
            String aName = request.getParameter("aName");
            String aPwd = request.getParameter("aPwd");
            Admin admin = new Admin(aName, aPwd);
            boolean result = adminService.AdminLoginService(admin);
            if (result) {
                request.getSession().setAttribute("admin", admin);
                response.sendRedirect("mgrMainPage.jsp");
            } else {
                response.sendRedirect("mgrLogin.jsp");
            }
        } else if ("all".equals(action)) {
            int pageIndex = request.getParameter("pageIndex") == null ? 1 : Integer.parseInt(request.getParameter("pageIndex"));
            int totalPage = adminService.getTotalPageService(pageSize);
            if (pageIndex < 1) {
                pageIndex = 1;
            } else if (pageIndex > totalPage) {
                pageIndex = totalPage;
            }
            request.getSession().setAttribute("pageIndex", pageIndex);
            request.getSession().setAttribute("totalPage", totalPage);
            List<Admin> adminList = adminService.getAllAdminService(pageIndex, pageSize);
            request.getSession().setAttribute("adminList", adminList);
            response.sendRedirect("admin/managerMgr.jsp");
        } else if ("insert".equals(action)) {
            String aName = request.getParameter("aName");
            String aPwd = request.getParameter("aPwd");
            Admin admin = new Admin(aName, aPwd);
            boolean result = adminService.insertAdminService(admin);
            if (result) {
                response.sendRedirect("AdminServlet?action=all");
            } else {
                response.sendRedirect("managerAdd.jsp");
            }
        } else if ("delete".equals(action)) {
            int aId = Integer.parseInt(request.getParameter("aId"));
            adminService.deleteAdminByIdService(aId);
            response.sendRedirect("AdminServlet?action=all");
        } else if ("update".equals(action)) {
            String aName = request.getParameter("aName");
            Admin admin1 = adminService.getAdminByNameService(aName);
            int aId = admin1.getaId();
            String aPwd = request.getParameter("aPwd");
            Admin admin = adminService.getAdminByIdService(aId);
            String pwd = admin.getaPwd();
            if (aPwd.equals(pwd)) {
                String newpwd = request.getParameter("newpwd");
                admin = new Admin(aId, newpwd);
                boolean result = adminService.updateAdminService(admin);
                if (result) {
                    response.sendRedirect("AdminServlet?action=all");
                } else {
                    response.sendRedirect("admin/managerUpd.jsp");
                }
            }

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
