package com.hgkj.model.entity;

import java.util.List;

public class Domitory {
    private Integer domitoryId;

    private Building building;

    private String domitoryName;

    private String domitoryType;

    private String domitoryNumber;

    private String domitoryTel;

    private List<Student> studentList;

    public List<Student> getStudentList() {
        return studentList;
    }

    public void setStudentList(List<Student> studentList) {
        this.studentList = studentList;
    }

    public Building getBuilding() {
        return building;
    }

    public void setBuilding(Building building) {
        this.building = building;
    }

    public Integer getDomitoryId() {
        return domitoryId;
    }

    public void setDomitoryId(Integer domitoryId) {
        this.domitoryId = domitoryId;
    }


    public String getDomitoryName() {
        return domitoryName;
    }

    public void setDomitoryName(String domitoryName) {
        this.domitoryName = domitoryName == null ? null : domitoryName.trim();
    }

    public String getDomitoryType() {
        return domitoryType;
    }

    public void setDomitoryType(String domitoryType) {
        this.domitoryType = domitoryType == null ? null : domitoryType.trim();
    }

    public String getDomitoryNumber() {
        return domitoryNumber;
    }

    public void setDomitoryNumber(String domitoryNumber) {
        this.domitoryNumber = domitoryNumber == null ? null : domitoryNumber.trim();
    }

    public String getDomitoryTel() {
        return domitoryTel;
    }

    public void setDomitoryTel(String domitoryTel) {
        this.domitoryTel = domitoryTel == null ? null : domitoryTel.trim();
    }
}