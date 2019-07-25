package com.hgkj.model.entity;

public class Log {
    private Integer logId;

    private Integer logStudentid;

    private Teacher teacher;

    private String logDate;

    private String logRemark;

    public Teacher getTeacher() {
        return teacher;
    }

    public void setTeacher(Teacher teacher) {
        this.teacher = teacher;
    }

    public Integer getLogId() {
        return logId;
    }

    public void setLogId(Integer logId) {
        this.logId = logId;
    }

    public Integer getLogStudentid() {
        return logStudentid;
    }

    public void setLogStudentid(Integer logStudentid) {
        this.logStudentid = logStudentid;
    }

    public String getLogDate() {
        return logDate;
    }

    public void setLogDate(String logDate) {
        this.logDate = logDate == null ? null : logDate.trim();
    }

    public String getLogRemark() {
        return logRemark;
    }

    public void setLogRemark(String logRemark) {
        this.logRemark = logRemark == null ? null : logRemark.trim();
    }
}