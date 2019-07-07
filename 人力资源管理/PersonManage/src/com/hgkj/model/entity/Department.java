package com.hgkj.model.entity;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/6 18:15
 * @Version 1.8
 */
public class Department {
    /**
     * 序号
     */
    private int dId;
    /**
     * 部门名称
     */
    private String dName;
    /**
     * 部门人数
     */
    private int dNum;
    /**
     * 创建时间
     */
    private String dTime;
    /**
     * 备注
     */
    private String dDesp;

    public Department() {
    }

    public Department(String dName, String dTime, String dDesp) {
        this.dName = dName;
        this.dTime = dTime;
        this.dDesp = dDesp;
    }

    public int getdId() {
        return dId;
    }

    public void setdId(int dId) {
        this.dId = dId;
    }

    public String getdName() {
        return dName;
    }

    public void setdName(String dName) {
        this.dName = dName;
    }

    public int getdNum() {
        return dNum;
    }

    public void setdNum(int dNum) {
        this.dNum = dNum;
    }

    public String getdTime() {
        return dTime;
    }

    public void setdTime(String dTime) {
        this.dTime = dTime;
    }

    public String getdDesp() {
        return dDesp;
    }

    public void setdDesp(String dDesp) {
        this.dDesp = dDesp;
    }
}
