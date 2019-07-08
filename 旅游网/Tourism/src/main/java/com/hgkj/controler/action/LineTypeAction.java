package com.hgkj.controler.action;

import com.hgkj.model.entity.LineType;
import com.hgkj.model.service.LineTypeService;
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
 * @Date: 2019/6/25 11:58
 * @Version 1.8
 */
@Controller
@Namespace("/")
@ParentPackage("json-default")
public class LineTypeAction {
    @Autowired
    private LineTypeService lineTypeService;
    private List<LineType> lineTypeList;
    private LineType lineType;
    private File file;
    private String contentType;
    private String fileFileName;

    @Action(value = "allLT", results = @Result(name = "allLT", type = "json", params = {"root", "lineTypeList"}))
    public String allLT() {
        lineTypeList = lineTypeService.getAllLineTypeService();
        return "allLT";
    }

    @Action(value = "allLineType", results = @Result(name = "all", type = "redirect", location = "lineTypeView.jsp"))
    public String allLineType() {
        lineTypeList = lineTypeService.getAllLineTypeService();
        ActionContext.getContext().getSession().put("lineTypeList", lineTypeList);
        return "all";
    }

    @Action(value = "insertLineType", results =
    @Result(name = "insert", type = "redirectAction", params = {"actionName", "allLineType"}))
    public String insertLineType() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        lineType.setTime(sdf.format(new Date()));
        //得到上传文件在服务器的路径加文件名
        String target = ServletActionContext.getServletContext().getRealPath("ht/images/" + fileFileName);
        //获得上传的文件
        File targetFile = new File(target);
        try {
            //通过struts2提供的FileUtils类拷贝
            FileUtils.copyFile(file, targetFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
        lineType.setIcon("ht/images/" + fileFileName);
        lineTypeService.insertLineTypeService(lineType);
        return "insert";
    }

    @Action(value = "deleteLineType", results =
    @Result(name = "delete", type = "redirectAction", params = {"actionName", "allLineType"}))
    public String deleteLineType() {
        lineTypeService.deleteLineTypeService(lineType.getLineTypeId());
        return "delete";
    }

    @Action(value = "findLineType", results = @Result(name = "find", type = "redirect", location = "lineTypeUpdate.jsp"))
    public String findLineType() {
        LineType lT = lineTypeService.getLineTypeByIdService(lineType.getLineTypeId());
        ActionContext.getContext().getSession().put("lT", lT);
        return "find";
    }

    @Action(value = "updateLineType", results =
    @Result(name = "update", type = "redirectAction", params = {"actionName", "allLineType"}))
    public String updateLineType() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        lineType.setTime(sdf.format(new Date()));
        //得到上传文件在服务器的路径加文件名
        String target = ServletActionContext.getServletContext().getRealPath("ht/images/" + fileFileName);
        //获得上传的文件
        File targetFile = new File(target);
        try {
            //通过struts2提供的FileUtils类拷贝
            FileUtils.copyFile(file, targetFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
        lineType.setIcon("ht/images/" + fileFileName);
        lineTypeService.updateLineTypeService(lineType);
        return "update";
    }

    public List<LineType> getLineTypeList() {
        return lineTypeList;
    }

    public void setLineTypeList(List<LineType> lineTypeList) {
        this.lineTypeList = lineTypeList;
    }

    public File getFile() {
        return file;
    }

    public void setFile(File file) {
        this.file = file;
    }

    public String getContentType() {
        return contentType;
    }

    public void setContentType(String contentType) {
        this.contentType = contentType;
    }

    public String getFileFileName() {
        return fileFileName;
    }

    public void setFileFileName(String fileFileName) {
        this.fileFileName = fileFileName;
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
}
