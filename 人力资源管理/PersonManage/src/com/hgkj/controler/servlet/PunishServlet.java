package com.hgkj.controler.servlet;

import com.hgkj.model.entity.Punish;
import com.hgkj.model.service.PunishService;
import com.hgkj.model.service.impl.PunishServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/13 8:32
 * @Version 1.8
 */
@WebServlet(name = "PunishServlet", value = "/PunishServlet")
public class PunishServlet extends HttpServlet {
    private int pageSize = 10;
    private PunishService punishService = new PunishServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("all".equals(action)) {
            int pageIndex = request.getParameter("pageIndex") == null ? 1 : Integer.parseInt(request.getParameter("pageIndex"));
            int totalPage = punishService.getTotalPageService(pageSize);
            if (pageIndex < 1) {
                pageIndex = 1;
            } else if (pageIndex > totalPage) {
                pageIndex = totalPage;
            }
            request.getSession().setAttribute("pageIndex", pageIndex);
            request.getSession().setAttribute("totalPage", totalPage);
            List<Punish> punishList = punishService.getAllPunishService(pageIndex, pageSize);
            request.getSession().setAttribute("punishList", punishList);
            response.sendRedirect("rewards/rewardsMgr.jsp");
        } else if ("insert".equals(action)) {
            String pTheme = request.getParameter("pTheme");
            String pType = request.getParameter("pType");
            int pMoney = Integer.parseInt(request.getParameter("pMoney"));
            String pTime = request.getParameter("pTime");
            String pDesp = request.getParameter("pDesp");
            Punish punish = new Punish(pTheme, pType, pMoney, pTime, pDesp);
            boolean result = punishService.insertPunishService(punish);
            if (result) {
                response.sendRedirect("PunishServlet?action=all");
            } else {
                response.sendRedirect("rewards/rewardsAdd.jsp");
            }
        } else if ("delete".equals(action)) {
            int pId = Integer.parseInt(request.getParameter("pId"));
            punishService.deletePunishByIdService(pId);
            response.sendRedirect("PunishServlet?action=all");
        } else if ("find".equals(action)) {
            int pId = Integer.parseInt(request.getParameter("pId"));
            Punish punish = punishService.getPunishByIdService(pId);
            request.getSession().setAttribute("punish", punish);
            response.sendRedirect("rewards/rewardsSel.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
