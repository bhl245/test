package com.hgkj.controler.action;

import com.hgkj.model.entity.Domitory;
import com.hgkj.model.entity.Student;
import com.hgkj.model.service.DomitoryService;
import com.hgkj.model.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

/**
 * @Author: 卞虹霖
 * @Date: 2019/7/23 9:10
 * @Version 1.8
 */
@Controller
@RequestMapping("/")
public class QCAction {
    @Autowired
    private StudentService studentService;
    @Autowired
    private DomitoryService domitoryService;

    @RequestMapping("QCbyStudentUsername")
    public String byStudentUsername(@RequestParam String studentUsername, HttpSession session) {
        Student student3 = studentService.getStudentUsernameService(studentUsername);
        Domitory domitory2 = domitoryService.getDomitoryByStudentIdService(student3.getStudentId());
        session.setAttribute("student3", student3);
        session.setAttribute("domitory2", domitory2);
        return "redirect:StudentQC2.jsp";
    }
}
