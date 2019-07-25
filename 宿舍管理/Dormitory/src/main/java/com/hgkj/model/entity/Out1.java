package com.hgkj.model.entity;

public class Out1 {
    private Integer outId;

    private Student student;

    private String outDate;

    private String outRemark;

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public Integer getOutId() {
        return outId;
    }

    public void setOutId(Integer outId) {
        this.outId = outId;
    }

    public String getOutDate() {
        return outDate;
    }

    public void setOutDate(String outDate) {
        this.outDate = outDate == null ? null : outDate.trim();
    }

    public String getOutRemark() {
        return outRemark;
    }

    public void setOutRemark(String outRemark) {
        this.outRemark = outRemark == null ? null : outRemark.trim();
    }
}