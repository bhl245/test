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

import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/7/4 11:02
 * @Version 1.8
 */
@Controller
@Namespace("/")
@ParentPackage("struts-default")
public class IndexAction {
    @Autowired
    private LineTypeService lineTypeService;
    @Autowired
    private LineService lineService;
    private Line line;
    private LineType lineType;

    @Action(value = "allGroup1", results = @Result(name = "allGroup", type = "redirect", location = "group.jsp"))
    public String allGroup() {
        List<Line> lineList = lineService.getAllLineService();
        ActionContext.getContext().getSession().put("lineList", lineList);
        return "allGroup";
    }

    @Action(value = "allLine1", results = @Result(name = "allLine", type = "redirect", location = "index.jsp"))
    public String allLine() {
        List<Line> lineList1 = lineService.getAllLineService();
        ActionContext.getContext().getSession().put("lineList1", lineList1);
        return "allLine";
    }

    @Action(value = "findLine1", results = @Result(name = "findLine", type = "redirect", location = "jny.jsp"))
    public String findLine1() {
        List<Line> lineList = lineService.getAllLineService();
        ActionContext.getContext().getSession().put("lineList", lineList);
        return "findLine";
    }


    public Line getLine() {
        return line;
    }

    public void setLine(Line line) {
        this.line = line;
    }

    public LineType getLineType() {
        return lineType;
    }

    public void setLineType(LineType lineType) {
        this.lineType = lineType;
    }

    public void setLineTypeService(LineTypeService lineTypeService) {
        this.lineTypeService = lineTypeService;
    }

    public void setLineService(LineService lineService) {
        this.lineService = lineService;
    }
}
