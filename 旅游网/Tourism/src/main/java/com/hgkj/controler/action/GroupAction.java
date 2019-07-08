package com.hgkj.controler.action;

import com.hgkj.model.entity.Line;
import com.hgkj.model.entity.LineType;
import com.hgkj.model.service.LineService;
import com.hgkj.model.service.LineTypeService;
import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/6/30 9:46
 * @Version 1.8
 */
@Controller
@Namespace("/")
@ParentPackage("json-default")
public class GroupAction {
    @Autowired
    private LineService lineService;
    @Autowired
    private LineTypeService lineTypeService;
    private Line line;

    @Action(value = "allGroup", results = @Result(name = "all", type = "redirect", location = "groupView.jsp"))
    public String allGroup() {
        List<Line> lineList = lineService.getAllLineService();
        ActionContext.getContext().getSession().put("lineList", lineList);
        return "all";
    }

    @Action(value = "findGroup", results = @Result(name = "find", type = "redirect", location = "groupUpdate.jsp"))
    public String findGroup() {
        Line l = lineService.getLineByIdService(line.getLineId());
        List<LineType> lineTypeL = lineTypeService.getAllLineTypeService();
        ActionContext.getContext().getSession().put("l", l);
        ActionContext.getContext().getSession().put("lineTypeL", lineTypeL);
        return "find";
    }

    @Action(value = "updateGroup", results =
    @Result(name = "update", type = "redirectAction", params = {"actionName", "allGroup"}))
    public String updateGroup() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        line.setOnTime(sdf.format(new Date()));
        lineService.updateLineService(line);
        return "update";
    }

    public void setLineTypeService(LineTypeService lineTypeService) {
        this.lineTypeService = lineTypeService;
    }

    public void setLineService(LineService lineService) {
        this.lineService = lineService;
    }

    public Line getLine() {
        return line;
    }

    public void setLine(Line line) {
        this.line = line;
    }
}
