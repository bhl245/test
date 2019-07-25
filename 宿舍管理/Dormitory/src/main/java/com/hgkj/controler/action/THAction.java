package com.hgkj.controler.action;

import com.hgkj.model.entity.Building;
import com.hgkj.model.entity.Domitory;
import com.hgkj.model.entity.Student;
import com.hgkj.model.service.BuildingService;
import com.hgkj.model.service.DomitoryService;
import com.hgkj.model.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/7/22 19:30
 * @Version 1.8
 */
@Controller
@RequestMapping("/")
public class THAction {
    @Autowired
    private StudentService studentService;
    @Autowired
    private DomitoryService domitoryService;
    @Autowired
    private BuildingService buildingService;

    @RequestMapping("THbyStudentUsername")
    public String byStudentUsername(@RequestParam String studentUsername, HttpSession session) {
        Student student2 = studentService.getStudentUsernameService(studentUsername);
        Domitory domitory1 = domitoryService.getDomitoryByStudentIdService(student2.getStudentId());
        List<Building> buildingList = buildingService.allBuildingService();
        session.setAttribute("student2", student2);
        session.setAttribute("domitory1", domitory1);
        session.setAttribute("buildingList", buildingList);
        return "redirect:StudentTH2.jsp";
    }

    @RequestMapping("ByBuildingId")
    public String ByBuildingId(@RequestParam int buildingId, HttpSession session) {
        List<Domitory> domitoryList = domitoryService.getDomitoryByBuildingIdService(buildingId);
        session.setAttribute("domitoryList", domitoryList);
        return "redirect:StudentTH2.jsp";
    }

    @RequestMapping("updateStudnetByDomitory")
    public String updateStudnetByDomitory(@RequestParam int domitoryId) {
        studentService.updateStudentByDomitoryService(domitoryId);
        return "redirect:StudentTH.jsp";
    }
}
