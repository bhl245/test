package com.hgkj.controler.servlet;

import com.hgkj.model.entity.Department;
import com.hgkj.model.entity.Staff;
import com.hgkj.model.service.DepartmentService;
import com.hgkj.model.service.StaffService;
import com.hgkj.model.service.impl.DepartmentServiceImpl;
import com.hgkj.model.service.impl.StaffServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/8 15:45
 * @Version 1.8
 */
@WebServlet(name = "StaffServlet", value = "/StaffServlet")
public class StaffServlet extends HttpServlet {
    private int pageSize = 10;
    private StaffService staffService = new StaffServiceImpl();
    private DepartmentService departmentService = new DepartmentServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        List<Department> departmentList = departmentService.getAllDepartmentDao();
        request.getSession().setAttribute("departmentList", departmentList);
        if ("all".equals(action)) {
            int pageIndex = request.getParameter("pageIndex") == null ? 1 : Integer.parseInt(request.getParameter("pageIndex"));
            int totalPage = staffService.getTotalPageService(pageSize);
            if (pageIndex < 1) {
                pageIndex = 1;
            } else if (pageIndex > totalPage) {
                pageIndex = totalPage;
            }
            request.getSession().setAttribute("pageIndex", pageIndex);
            request.getSession().setAttribute("totalPage", totalPage);
            List<Staff> staffList = staffService.getAllStaffService(pageIndex, pageSize);
            request.getSession().setAttribute("staffList", staffList);
            response.sendRedirect("employee/employeeMgr.jsp");
        } else if ("insert".equals(action)) {
            String stName = request.getParameter("stName");
            String stAge = request.getParameter("stAge");
            String stSex = request.getParameter("stSex");
            String stBirth = request.getParameter("stBirth");
            String stIDCard = request.getParameter("stIDCard");
            String stNation = request.getParameter("stNation");
            String stMarriage = request.getParameter("stMarriage");
            String stPolitical = request.getParameter("stPolitical");
            String stNative = request.getParameter("stNative");
            String stTel = request.getParameter("stTel");
            String stAddress = request.getParameter("stAddress");
            String stAfterSchool = request.getParameter("stAfterSchool");
            String stMajor = request.getParameter("stMajor");
            String stEducation = request.getParameter("stEducation");
            String stStartTime = request.getParameter("stStartTime");
            int dId = Integer.parseInt(request.getParameter("dName"));
            Department department = departmentService.getDepartmentByIdService(dId);
            String stWork = request.getParameter("stWork");
            String stRegister = request.getParameter("stRegister");
            String stTime = request.getParameter("stTime");
            String stDesp = request.getParameter("stDesp");
            Staff staff = new Staff(stName, stAge, stSex, stBirth, stIDCard, stNation, stMarriage, stPolitical, stNative,
                    stTel, stAddress, stAfterSchool, stMajor, stEducation, stStartTime, department, stWork, stRegister, stTime,
                    stDesp);
            boolean result = staffService.insertStaffService(staff);
            if (result) {
                response.sendRedirect("StaffServlet?action=all");
            } else {
                response.sendRedirect("employee/employeeAdd.jsp");
            }
        } else if ("delete".equals(action)) {
            int stId = Integer.parseInt(request.getParameter("stId"));
            staffService.deleteStaffByIdService(stId);
            response.sendRedirect("StaffServlet?action=all");
        } else if ("update".equals(action)) {
            int stId = Integer.parseInt(request.getParameter("stId"));
            String stName = request.getParameter("stName");
            String stAge = request.getParameter("stAge");
            String stSex = request.getParameter("stSex");
            String stBirth = request.getParameter("stBirth");
            String stIDCard = request.getParameter("stIDCard");
            String stNation = request.getParameter("stNation");
            String stMarriage = request.getParameter("stMarriage");
            String stPolitical = request.getParameter("stPolitical");
            String stNative = request.getParameter("stNative");
            String stTel = request.getParameter("stTel");
            String stAddress = request.getParameter("stAddress");
            String stAfterSchool = request.getParameter("stAfterSchool");
            String stMajor = request.getParameter("stMajor");
            String stEducation = request.getParameter("stEducation");
            String stStartTime = request.getParameter("stStartTime");
            int dId = Integer.parseInt(request.getParameter("dName"));
            Department department = departmentService.getDepartmentByIdService(dId);
            String stWork = request.getParameter("stWork");
            String stRegister = request.getParameter("stRegister");
            String stTime = request.getParameter("stTime");
            String stDesp = request.getParameter("stDesp");
            Staff staff = new Staff(stId, stName, stAge, stSex, stBirth, stIDCard, stNation, stMarriage, stPolitical, stNative,
                    stTel, stAddress, stAfterSchool, stMajor, stEducation, stStartTime, department, stWork, stRegister, stTime,
                    stDesp);
            boolean result = staffService.updateStaffService(staff);
            if (result) {
                response.sendRedirect("StaffServlet?action=all");
            } else {
                response.sendRedirect("employee/employeeUpd.jsp");
            }
        } else if ("find".equals(action)) {
            int stId = Integer.parseInt(request.getParameter("stId"));
            Staff staff = staffService.getStaffByIdService(stId);
            request.getSession().setAttribute("staff", staff);
            response.sendRedirect("employee/employeeUpd.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
