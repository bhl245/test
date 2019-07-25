package com.hgkj.controler.action;

import com.hgkj.model.entity.Teacher;
import com.hgkj.model.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/7/17 11:26
 * @Version 1.8
 */
@Controller
@RequestMapping("/")
public class TeacherAction {
    @Autowired
    private TeacherService teacherService;

    @RequestMapping("teacherPwdUpdate")
    public String teacherPwdUpdate(@RequestParam String Password2, HttpSession session) {
        Teacher teacher = (Teacher) session.getAttribute("teacher1");
        teacher.setTeacherPassword(Password2);
        teacherService.teacherPwdUpdateService(teacher);
        return "redirect:Login.jsp";
    }

    @RequestMapping("allTeacher")
    public String allTeacher(HttpSession session) {
        List<Teacher> teacherList = teacherService.allTeacherService();
        session.setAttribute("teacherList", teacherList);
        return "redirect:TeacherManager.jsp";
    }

    @RequestMapping("addTeacher")
    public String addTeacher(@ModelAttribute Teacher teacher) {
        teacherService.insertTeacherService(teacher);
        return "redirect:allTeacher.form";
    }

    @RequestMapping("deleteTeacher")
    public String deleteTeacher(@RequestParam int teacherId) {
        teacherService.deleteTeacherService(teacherId);
        return "redirect:allTeacher.form";
    }

    @RequestMapping("findTeacher")
    public String findTeacher(@RequestParam int teacherId, HttpSession session) {
        Teacher teacher = teacherService.getTeacherByIdService(teacherId);
        session.setAttribute("teacher", teacher);
        return "redirect:TeacherUpdate.jsp";
    }

    @RequestMapping("updateTeacher")
    public String updateTeacher(@ModelAttribute Teacher teacher) {
        teacherService.updateTeacherService(teacher);
        return "redirect:allTeacher.form";
    }

    @RequestMapping("cascadeTeacher")
    public String cascadeTeacher(@RequestParam String SearchRow, @RequestParam String SearchKey, HttpSession session) {
        if (SearchRow.equals("teacherName")) {
            List<Teacher> teacherList = teacherService.cascadeTeacherNameService(SearchKey);
            session.setAttribute("teacherList", teacherList);
        } else if (SearchRow.equals("teacherTel")) {
            List<Teacher> teacherList = teacherService.cascadeTeacherTelService(SearchKey);
            session.setAttribute("teacherList", teacherList);
        } else {
            List<Teacher> teacherList = teacherService.cascadeTeacherUsernameService(SearchKey);
            session.setAttribute("teacherList", teacherList);
        }
        return "redirect:TeacherManager.jsp";
    }
}
