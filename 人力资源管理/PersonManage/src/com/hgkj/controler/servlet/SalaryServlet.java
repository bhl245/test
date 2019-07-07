package com.hgkj.controler.servlet;

import com.hgkj.model.entity.Salary;
import com.hgkj.model.entity.Staff;
import com.hgkj.model.service.SalaryService;
import com.hgkj.model.service.StaffService;
import com.hgkj.model.service.impl.SalaryServiceImpl;
import com.hgkj.model.service.impl.StaffServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/13 15:29
 * @Version 1.8
 */
@WebServlet(name = "SalaryServlet", value = "/SalaryServlet")
public class SalaryServlet extends HttpServlet {
    private int pageSize = 10;
    private SalaryService salaryService = new SalaryServiceImpl();
    private StaffService staffService = new StaffServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        List<Staff> staffList = staffService.getAllStaffDao();
        request.getSession().setAttribute("staffList", staffList);
        if ("all".equals(action)) {
            int pageIndex = request.getParameter("pageIndex") == null ? 1 : Integer.parseInt(request.getParameter("pageIndex"));
            int totalPage = salaryService.getTotalPageService(pageSize);
            if (pageIndex < 1) {
                pageIndex = 1;
            } else if (pageIndex > totalPage) {
                pageIndex = totalPage;
            }
            request.getSession().setAttribute("pageIndex", pageIndex);
            request.getSession().setAttribute("totalPage", totalPage);
            List<Salary> salaryList = salaryService.getAllSalaryService(pageIndex, pageSize);
            request.getSession().setAttribute("salaryList", salaryList);
            response.sendRedirect("pay/payMgr.jsp");
        } else if ("insert".equals(action)) {
            int stId = Integer.parseInt(request.getParameter("stName"));
            Staff staff = staffService.getStaffByIdService(stId);
            String saMonth = request.getParameter("saMonth");
            int saBasic = Integer.parseInt(request.getParameter("saBasic"));
            int saOvertime = Integer.parseInt(request.getParameter("saOvertime"));
            int saWorking = Integer.parseInt(request.getParameter("saWorking"));
            int saAttendance = Integer.parseInt(request.getParameter("saAttendance"));
            int saAbsenteeism = Integer.parseInt(request.getParameter("saAbsenteeism"));
            int saInsurance = Integer.parseInt(request.getParameter("saInsurance"));
            Salary salary = new Salary(staff, saMonth, saBasic, saOvertime, saWorking, saAttendance, saAbsenteeism, saInsurance);
            boolean result = salaryService.insertSalaryService(salary);
            if (result) {
                response.sendRedirect("SalaryServlet?action=all");
            } else {
                response.sendRedirect("pay/payAdd.jsp");
            }
        } else if ("delete".equals(action)) {
            int saId = Integer.parseInt(request.getParameter("saId"));
            salaryService.deleteSalaryByIdService(saId);
            response.sendRedirect("SalaryServlet?action=all");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
