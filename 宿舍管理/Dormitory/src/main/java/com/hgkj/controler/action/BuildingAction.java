package com.hgkj.controler.action;

import com.hgkj.model.entity.Building;
import com.hgkj.model.service.BuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/7/20 20:52
 * @Version 1.8
 */
@Controller
@RequestMapping("/")
public class BuildingAction {
    @Autowired
    private BuildingService buildingService;

    @RequestMapping("allBuilding")
    public String allBuilding(HttpSession session) {
        List<Building> buildingList = buildingService.allBuildingService();
        session.setAttribute("buildingList", buildingList);
        return "redirect:BuildingManager.jsp";
    }

    @RequestMapping("addBuilding")
    public String addBuilding(@ModelAttribute Building building) {
        buildingService.insertBuildingService(building);
        return "redirect:allBuilding.form";
    }

    @RequestMapping("deleteBuilding")
    public String deleteBuilding(@RequestParam int buildingId) {
        buildingService.deleteBuildingService(buildingId);
        return "redirect:allBuilding.form";
    }

    @RequestMapping("findBuilding")
    public String findBuilding(@RequestParam int buildingId, HttpSession session) {
        Building building = buildingService.getBuildingByIdService(buildingId);
        session.setAttribute("building", building);
        return "redirect:BuildingUpdate.jsp";
    }

    @RequestMapping("updateBuilding")
    public String updateBuilding(@ModelAttribute Building building) {
        buildingService.updateBuildingService(building);
        return "redirect:allBuilding.form";
    }

    @RequestMapping("cascadeBuilding")
    public String cascadeBuilding(@RequestParam String SearchKey, HttpSession session) {
        List<Building> buildingList = buildingService.cascadeBuildingNameService(SearchKey);
        session.setAttribute("buildingList", buildingList);
        return "redirect:BuildingManager.jsp";
    }
}
