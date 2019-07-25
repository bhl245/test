package com.hgkj.controler.action;

import com.hgkj.model.entity.Admin;
import com.hgkj.model.entity.Student;
import com.hgkj.model.entity.Teacher;
import com.hgkj.model.service.AdminService;
import com.hgkj.model.service.StudentService;
import com.hgkj.model.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

/**
 * @Author: 卞虹霖
 * @Date: 2019/7/16 19:08
 * @Version 1.8
 */
@Controller
@RequestMapping("/")
public class LoginAction {
    @Autowired
    private AdminService adminService;
    @Autowired
    private TeacherService teacherService;
    @Autowired
    private StudentService studentService;
    private String message;

    @RequestMapping(value = "loginAction")
    public String loginAction(@RequestParam int Type,
                              @RequestParam String Username,
                              @RequestParam String Password,
                              HttpSession session) {
        if (Type == 1) {
            Admin admin = new Admin(Username, Password);
            Admin admin1 = adminService.adminLoginService(admin);
            if (admin1 == null) {
                message = "用户名密码错误！";
                session.setAttribute("message", message);
                return "redirect:Login.jsp";
            } else {
                session.setAttribute("admin1", admin1);
                session.setAttribute("Type", Type);
                return "redirect:Index.jsp";
            }
        } else if (Type == 2) {
            Teacher teacher = new Teacher(Username, Password);
            Teacher teacher1 = teacherService.teacherLoginService(teacher);
            if (teacher1 == null) {
                message = "用户名密码错误！";
                session.setAttribute("message", message);
                return "redirect:Login.jsp";
            } else {
                session.setAttribute("teacher1", teacher1);
                session.setAttribute("Type", Type);
                return "redirect:Index.jsp";
            }
        } else if (Type == 3) {
            Student student = new Student(Username, Password);
            Student student1 = studentService.studentLoginService(student);
            if (student1 == null) {
                message = "用户名密码错误！";
                session.setAttribute("message", message);
                return "redirect:Login.jsp";
            } else {
                session.setAttribute("student1", student1);
                session.setAttribute("Type", Type);
                return "redirect:Index.jsp";
            }
        }
        return "redirect:Index.jsp";
    }

    @RequestMapping("passwordUpdate")
    public String passwordUpdate(HttpSession session) {
        Admin admin = (Admin) session.getAttribute("admin1");
        Teacher teacher = (Teacher) session.getAttribute("teacher1");
        Student student = (Student) session.getAttribute("student1");
        if (admin != null) {
            return "/adminPwdUpdate.form";
        } else if (teacher != null) {
            return "/teacherPwdUpdate.form";
        } else if (student != null) {
            return "/studentPwdUpdate.form";
        } else {
            return "redirect:Login.jsp";
        }
    }

    @RequestMapping("outAction")
    public String outAction(HttpSession session) {
        session.invalidate();
        return "redirect:Login.jsp";
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public void setAdminService(AdminService adminService) {
        this.adminService = adminService;
    }

    public void setTeacherService(TeacherService teacherService) {
        this.teacherService = teacherService;
    }

    public void setStudentService(StudentService studentService) {
        this.studentService = studentService;
    }
}
