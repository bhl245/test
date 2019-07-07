package com.hgkj.controler.servlet;

import com.hgkj.model.entity.Train;
import com.hgkj.model.service.TrainService;
import com.hgkj.model.service.impl.TrainServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/12 21:43
 * @Version 1.8
 */
@WebServlet(name = "TrainServlet", value = "/TrainServlet")
public class TrainServlet extends HttpServlet {
    private int pageSize = 10;
    private TrainService trainService = new TrainServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("all".equals(action)) {
            int pageIndex = request.getParameter("pageIndex") == null ? 1 : Integer.parseInt(request.getParameter("pageIndex"));
            int totalPage = trainService.getTotalPageService(pageSize);
            if (pageIndex < 1) {
                pageIndex = 1;
            } else if (pageIndex > totalPage) {
                pageIndex = totalPage;
            }
            request.getSession().setAttribute("pageIndex", pageIndex);
            request.getSession().setAttribute("totalPage", totalPage);
            List<Train> trainList = trainService.getAllTrainService(pageIndex, pageSize);
            request.getSession().setAttribute("trainList", trainList);
            response.sendRedirect("train/trainMgr.jsp");
        } else if ("insert".equals(action)) {
            String tPerson = request.getParameter("tPerson");
            String tTheme = request.getParameter("tTheme");
            String tPurpose = request.getParameter("tPurpose");
            String tTime = request.getParameter("tTime");
            String tPlace = request.getParameter("tPlace");
            String tParticipant = request.getParameter("tParticipant");
            String tDesp = request.getParameter("tDesp");
            Train train = new Train(tPerson, tTheme, tPurpose, tTime, tPlace, tParticipant, tDesp);
            boolean result = trainService.insertTrainService(train);
            if (result) {
                response.sendRedirect("TrainServlet?action=all");
            } else {
                response.sendRedirect("train/trainAdd.jsp");
            }
        } else if ("delete".equals(action)) {
            int tId = Integer.parseInt(request.getParameter("tId"));
            trainService.deleteTrainByIdService(tId);
            response.sendRedirect("TrainServlet?action=all");
        } else if ("find".equals(action)) {
            int tId = Integer.parseInt(request.getParameter("tId"));
            Train train = trainService.getTrainByIdService(tId);
            request.getSession().setAttribute("train", train);
            response.sendRedirect("train/trainSel.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
