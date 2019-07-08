package com.hgkj.controler.action;

import com.hgkj.model.entity.Line;
import com.hgkj.model.entity.LineType;
import com.hgkj.model.entity.Picture;
import com.hgkj.model.service.LineService;
import com.hgkj.model.service.LineTypeService;
import com.hgkj.model.service.impl.LineTypeServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/6/27 10:26
 * @Version 1.8
 */
@Controller
@Namespace("/")
@ParentPackage("json-default")
public class LineAction {
    @Autowired
    private LineService lineService;
    @Autowired
    private LineTypeService lineTypeService;
    private Line line;
    private String message;
    private File[] file;
    private String[] fileContentType;
    private String[] fileFileName;
    private String[] introduction;
    private int[] pictureId;

    @Action(value = "allLine", results = @Result(name = "all", type = "redirect", location = "lineView.jsp"))
    public String allLine() {
        List<Line> lineList = lineService.getAllLineService();
        ActionContext.getContext().getSession().put("lineList", lineList);
        return "all";
    }

    @Action(value = "insertLine", results = @Result(name = "insert", type = "redirectAction", params = {"actionName", "allLine"}))
    public String insertLine() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        line.setOnTime(sdf.format(new Date()));
        for (int i = 0; i < file.length; i++) {
            String target = ServletActionContext.getServletContext().getRealPath("ht/images" + fileFileName[i]);
            File targetFile = new File(target);
            try {
                FileUtils.copyFile(file[i], targetFile);
            } catch (IOException e) {
                e.printStackTrace();
            }
            Picture picture = new Picture();
            picture.setIntroduction(introduction[i]);
            picture.setName("ht/images" + fileFileName[i]);
            picture.setLine(line);
            line.getPictureSet().add(picture);
        }
        lineService.insertLineService(line);
        return "insert";
    }

    @Action(value = "deleteLine", results = @Result(name = "delete", type = "json", params = {"root", "message"}))
    public String deleteLine() {
        lineService.deleteLineService(line.getLineId());
        message = "ok";
        return "delete";
    }

    @Action(value = "findLine", results = @Result(name = "find", type = "redirect", location = "lineUpdate.jsp"))
    public String findLine() {
        Line line1 = lineService.getLineByIdService(line.getLineId());
        List<LineType> lineTypes = lineTypeService.getAllLineTypeService();
        ActionContext.getContext().getSession().put("line1", line1);
        ActionContext.getContext().getSession().put("lineTypes", lineTypes);
        return "find";
    }

    @Action(value = "updateLine", results = @Result(name = "update", type = "redirectAction", params = {"actionName", "allLine"}))
    public String updateLine() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        line.setOnTime(sdf.format(new Date()));
        for (int i = 0; i < file.length; i++) {
            String target = ServletActionContext.getServletContext().getRealPath("ht/images" + fileFileName[i]);
            File targetFile = new File(target);
            try {
                FileUtils.copyFile(file[i], targetFile);
            } catch (IOException e) {
                e.printStackTrace();
            }
            Picture picture = new Picture();
            picture.setPictureId(pictureId[i]);
            picture.setIntroduction(introduction[i]);
            picture.setName("ht/images" + fileFileName[i]);
            picture.setLine(line);
            line.getPictureSet().add(picture);
        }
        lineService.updateLineService(line);
        return "update";
    }

    public int[] getPictureId() {
        return pictureId;
    }

    public void setPictureId(int[] pictureId) {
        this.pictureId = pictureId;
    }

    public void setLineTypeService(LineTypeService lineTypeService) {
        this.lineTypeService = lineTypeService;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public File[] getFile() {
        return file;
    }

    public void setFile(File[] file) {
        this.file = file;
    }

    public String[] getFileContentType() {
        return fileContentType;
    }

    public void setFileContentType(String[] fileContentType) {
        this.fileContentType = fileContentType;
    }

    public String[] getFileFileName() {
        return fileFileName;
    }

    public void setFileFileName(String[] fileFileName) {
        this.fileFileName = fileFileName;
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

    public String[] getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String[] introduction) {
        this.introduction = introduction;
    }
}
