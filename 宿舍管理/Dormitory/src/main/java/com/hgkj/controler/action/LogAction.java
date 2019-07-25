package com.hgkj.controler.action;

import com.hgkj.model.entity.Log;
import com.hgkj.model.entity.Student;
import com.hgkj.model.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/7/17 22:43
 * @Version 1.8
 */
@Controller
@RequestMapping("/")
public class LogAction {
    @Autowired
    private LogService logService;

    @RequestMapping("logGetById")
    public String logGetById(HttpSession session) {
        Student student = (Student) session.getAttribute("student1");
        List<Log> logList = logService.allLogService(student.getStudentId());
        session.setAttribute("logList", logList);
        return "redirect:StudentLog.jsp";
    }
}
