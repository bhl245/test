package com.hgkj.controler.servlet;

import com.hgkj.model.entity.Department;
import com.hgkj.model.service.DepartmentService;
import com.hgkj.model.service.impl.DepartmentServiceImpl;
import org.codehaus.jackson.map.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.DatagramPacket;
import java.util.Date;
import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/7 15:02
 * @Version 1.8
 */
@WebServlet(name = "DepartmentServlet", value = "/DepartmentServlet")
public class DepartmentServlet extends HttpServlet {
    private int pageSize = 10;
    private DepartmentService departmentService = new DepartmentServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("all".equals(action)) {
            int pageIndex = request.getParameter("pageIndex") == null ? 1 : Integer.parseInt(request.getParameter("pageIndex"));
            int totalPage = departmentService.getTotalPageService(pageSize);
            if (pageIndex < 1) {
                pageIndex = 1;
            } else if (pageIndex > totalPage) {
                pageIndex = totalPage;
            }
            request.getSession().setAttribute("pageIndex", pageIndex);
            request.getSession().setAttribute("totalPage", totalPage);
            List<Department> departmentList = departmentService.getAllDepartmentService(pageIndex, pageSize);
            for (Department department : departmentList) {
                int dNum = departmentService.getDepartmentNumService(department.getdId());
                department.setdNum(dNum);
            }
            request.getSession().setAttribute("departmentList", departmentList);
            response.sendRedirect("department/departmentMgr.jsp");
        } else if ("insert".equals(action)) {
            String dName = request.getParameter("dName");
            String dTime = request.getParameter("dTime");
            String dDesp = request.getParameter("dDesp");
            Department department = new Department(dName, dTime, dDesp);
            boolean result = departmentService.insertDepartmentService(department);
            if (result) {
                response.sendRedirect("DepartmentServlet?action=all");
            } else {
                response.sendRedirect("department/departmentAdd.jsp");
            }
        } else if ("delete".equals(action)) {
            int dId = Integer.parseInt(request.getParameter("dId"));
            departmentService.deleteDepartmentByIdService(dId);
            response.sendRedirect("DepartmentServlet?action=all");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
