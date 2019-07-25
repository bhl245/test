package com.hgkj.controler.action;

import com.hgkj.model.entity.Log;
import com.hgkj.model.entity.Student;
import com.hgkj.model.service.LogService;
import com.hgkj.model.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/7/17 11:29
 * @Version 1.8
 */
@Controller
@RequestMapping("/")
public class StudentAction {
    @Autowired
    private StudentService studentService;
    @Autowired
    private LogService logService;

    @RequestMapping("studentPwdUpdate")
    public String studentPwdUpdate(@RequestParam String Password2, HttpSession session) {
        Student student = (Student) session.getAttribute("student1");
        student.setStudentPassword(Password2);
        studentService.studentPwdUpdateService(student);
        return "redirect:Login.jsp";
    }

    @RequestMapping("allStudent")
    public String allStudent(HttpSession session) {
        List<Student> studentList = studentService.allStudentService();
        session.setAttribute("studentList", studentList);
        return "redirect:StudentManager.jsp";
    }

    @RequestMapping("addStudent")
    public String addStudent(@ModelAttribute Student student) {
        student.setStudentState("未入住");
        studentService.insertStudentService(student);
        return "redirect:allStudent.form";
    }

    @RequestMapping("deleteStudent")
    public String deleteStudent(@RequestParam int studentId) {
        Student student = studentService.getStudentByIdService(studentId);
        for (Log log : student.getLogList()) {
            logService.deleteLogService(log.getLogStudentid());
        }
        studentService.deleteStudentService(studentId);
        return "redirect:allStudent.form";
    }

    @RequestMapping("findStudent")
    public String findStudent(@RequestParam int studentId, HttpSession session) {
        Student student = studentService.getStudentByIdService(studentId);
        session.setAttribute("student", student);
        return "redirect:StudentUpdate.jsp";
    }

    @RequestMapping("updateStudent")
    public String updateStudent(@ModelAttribute Student student) {
        studentService.updateStudentService(student);
        return "redirect:allStudent.form";
    }

    @RequestMapping("cascadeStudent")
    public String cascadeStudent(@RequestParam String State,
                                 @RequestParam String SearchRow,
                                 @RequestParam String SearchKey,
                                 HttpSession session) {
        if (SearchRow.equals("studentName")) {
            List<Student> studentList = studentService.cascadeStudentNameService(State, SearchKey);
            session.setAttribute("studentList", studentList);
        } else if (SearchRow.equals("studentUsername")) {
            List<Student> studentList = studentService.cascadeStudentUsernameService(State, SearchKey);
            session.setAttribute("studentList", studentList);
        } else {
            List<Student> studentList = studentService.cascadeStudentClassService(State, SearchKey);
            session.setAttribute("studentList", studentList);
        }
        return "redirect:StudentManager.jsp";
    }
}
