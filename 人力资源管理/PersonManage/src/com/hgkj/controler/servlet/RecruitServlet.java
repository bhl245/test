package com.hgkj.controler.servlet;

import com.hgkj.model.entity.Recruit;
import com.hgkj.model.service.RecruitService;
import com.hgkj.model.service.impl.RecruitServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/12 11:23
 * @Version 1.8
 */
@WebServlet(name = "RecruitServlet", value = "/RecruitServlet")
public class RecruitServlet extends HttpServlet {
    private int pageSize = 10;
    private RecruitService recruitService = new RecruitServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("all".equals(action)) {
            int pageIndex = request.getParameter("pageIndex") == null ? 1 : Integer.parseInt(request.getParameter("pageIndex"));
            int totalPage = recruitService.getTotalPageService(pageSize);
            if (pageIndex < 1) {
                pageIndex = 1;
            } else if (pageIndex > totalPage) {
                pageIndex = totalPage;
            }
            request.getSession().setAttribute("pageIndex", pageIndex);
            request.getSession().setAttribute("totalPage", totalPage);
            List<Recruit> recruitList = recruitService.getAllRecruitService(pageIndex, pageSize);
            request.getSession().setAttribute("recruitList", recruitList);
            response.sendRedirect("invitejob/invitejobMgr.jsp");
        } else if ("insert".equals(action)) {
            String rName = request.getParameter("rName");
            String rSex = request.getParameter("rSex");
            String rAge = request.getParameter("rAge");
            String rBirth = request.getParameter("rBirth");
            String rJob = request.getParameter("rJob");
            String rMajor = request.getParameter("rMajor");
            String rExperience = request.getParameter("rExperience");
            String rEducation = request.getParameter("rEducation");
            String rTel = request.getParameter("rTel");
            String rAfterSchool = request.getParameter("rAfterSchool");
            String rAddress = request.getParameter("rAddress");
            String rTime = request.getParameter("rTime");
            String rDesp = request.getParameter("rDesp");
            Recruit recruit = new Recruit(rName, rSex, rAge, rBirth, rJob, rMajor, rExperience, rEducation, rTel, rAfterSchool,
                    rAddress, rTime, rDesp);
            boolean result = recruitService.insertRecruitService(recruit);
            if (result) {
                response.sendRedirect("RecruitServlet?action=all");
            } else {
                response.sendRedirect("invitejob/invitejobAdd.jsp");
            }
        } else if ("delete".equals(action)) {
            int rId = Integer.parseInt(request.getParameter("rId"));
            recruitService.deleteRecruitByIdService(rId);
            response.sendRedirect("RecruitServlet?action=all");
        } else if ("find".equals(action)) {
            int rId = Integer.parseInt(request.getParameter("rId"));
            Recruit recruit = recruitService.getRecruitByIdService(rId);
            request.getSession().setAttribute("recruit", recruit);
            response.sendRedirect("invitejob/invitejobSel.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
