package com.hgkj.model.entity;

import org.apache.struts2.json.annotations.JSON;

import java.util.HashSet;
import java.util.Set;

/**
 * @Author: 卞虹霖
 * @Date: 2019/6/24 9:09
 * @Version 1.8
 */
public class LineType {
    private String lineTypeId;
    private String lineTypeName;
    private String time;
    private String icon;
    private Set<Line> lineSet = new HashSet<>();

    public Set<Line> getLineSet() {
        return lineSet;
    }

    public void setLineSet(Set<Line> lineSet) {
        this.lineSet = lineSet;
    }

    public String getLineTypeId() {
        return lineTypeId;
    }

    public void setLineTypeId(String lineTypeId) {
        this.lineTypeId = lineTypeId;
    }

    public String getLineTypeName() {
        return lineTypeName;
    }

    public void setLineTypeName(String lineTypeName) {
        this.lineTypeName = lineTypeName;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        LineType lineType = (LineType) o;

        if (lineTypeId != null ? !lineTypeId.equals(lineType.lineTypeId) : lineType.lineTypeId != null) return false;
        if (lineTypeName != null ? !lineTypeName.equals(lineType.lineTypeName) : lineType.lineTypeName != null) return false;
        if (time != null ? !time.equals(lineType.time) : lineType.time != null) return false;
        if (icon != null ? !icon.equals(lineType.icon) : lineType.icon != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = lineTypeId != null ? lineTypeId.hashCode() : 0;
        result = 31 * result + (lineTypeName != null ? lineTypeName.hashCode() : 0);
        result = 31 * result + (time != null ? time.hashCode() : 0);
        result = 31 * result + (icon != null ? icon.hashCode() : 0);
        return result;
    }
}
