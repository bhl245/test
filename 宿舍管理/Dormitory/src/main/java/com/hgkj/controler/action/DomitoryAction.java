package com.hgkj.controler.action;

import com.hgkj.model.entity.Building;
import com.hgkj.model.entity.Domitory;
import com.hgkj.model.service.BuildingService;
import com.hgkj.model.service.DomitoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/7/22 9:17
 * @Version 1.8
 */
@Controller
@RequestMapping("/")
public class DomitoryAction {
    @Autowired
    private DomitoryService domitoryService;
    @Autowired
    private BuildingService buildingService;

    @RequestMapping("allDomitory")
    public String allDomitory(HttpSession session) {
        List<Domitory> domitoryList = domitoryService.allDomitoryService();
        List<Building> buildingList = buildingService.allBuildingService();
        session.setAttribute("buildingList", buildingList);
        session.setAttribute("domitoryList", domitoryList);
        return "redirect:DomitoryManager.jsp";
    }

    @RequestMapping("addDomitory")
    public String addDomitory(@ModelAttribute Domitory domitory) {
        domitoryService.insertDomitoryService(domitory);
        return "redirect:allDomitory.form";
    }

    @RequestMapping("deleteDomitory")
    public String deleteDomitory(@RequestParam int domitoryId) {
        domitoryService.deleteDomitoryService(domitoryId);
        return "redirect:allDomitory.form";
    }

    @RequestMapping("findDomitory")
    public String findDomitory(@RequestParam int domitoryId, HttpSession session) {
        Domitory domitory = domitoryService.getDomitroyByIdService(domitoryId);
        session.setAttribute("domitory", domitory);
        return "redirect:DomitoryUpdate.jsp";
    }

    @RequestMapping("updateDomitory")
    public String updateDomitory(@ModelAttribute Domitory domitory) {
        domitoryService.updateDomitoryService(domitory);
        return "redirect:allDomitory.form";
    }
}
