package com.hgkj.model.entity;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/6 20:01
 * @Version 1.8
 */
public class Recruit {
    /**
     * 编号
     */
    private int rId;
    /**
     * 姓名
     */
    private String rName;
    /**
     * 性别
     */
    private String rSex;
    /**
     * 年龄
     */
    private String rAge;
    /**
     * 出生日期
     */
    private String rBirth;
    /**
     * 应聘职位
     */
    private String rJob;
    /**
     * 专业
     */
    private String rMajor;
    /**
     * 工作经验
     */
    private String rExperience;
    /**
     * 学历
     */
    private String rEducation;
    /**
     * 联系电话
     */
    private String rTel;
    /**
     * 毕业学校
     */
    private String rAfterSchool;
    /**
     * 家庭住址
     */
    private String rAddress;
    /**
     * 登记时间
     */
    private String rTime;
    /**
     * 个人简介
     */
    private String rDesp;

    public Recruit() {
    }

    public Recruit(String rName, String rSex, String rAge, String rBirth, String rJob, String rMajor, String rExperience, String rEducation, String rTel, String rAfterSchool, String rAddress, String rTime, String rDesp) {
        this.rName = rName;
        this.rSex = rSex;
        this.rAge = rAge;
        this.rBirth = rBirth;
        this.rJob = rJob;
        this.rMajor = rMajor;
        this.rExperience = rExperience;
        this.rEducation = rEducation;
        this.rTel = rTel;
        this.rAfterSchool = rAfterSchool;
        this.rAddress = rAddress;
        this.rTime = rTime;
        this.rDesp = rDesp;
    }

    public int getrId() {
        return rId;
    }

    public void setrId(int rId) {
        this.rId = rId;
    }

    public String getrName() {
        return rName;
    }

    public void setrName(String rName) {
        this.rName = rName;
    }

    public String getrSex() {
        return rSex;
    }

    public void setrSex(String rSex) {
        this.rSex = rSex;
    }

    public String getrAge() {
        return rAge;
    }

    public void setrAge(String rAge) {
        this.rAge = rAge;
    }

    public String getrBirth() {
        return rBirth;
    }

    public void setrBirth(String rBirth) {
        this.rBirth = rBirth;
    }

    public String getrJob() {
        return rJob;
    }

    public void setrJob(String rJob) {
        this.rJob = rJob;
    }

    public String getrMajor() {
        return rMajor;
    }

    public void setrMajor(String rMajor) {
        this.rMajor = rMajor;
    }

    public String getrExperience() {
        return rExperience;
    }

    public void setrExperience(String rExperience) {
        this.rExperience = rExperience;
    }

    public String getrEducation() {
        return rEducation;
    }

    public void setrEducation(String rEducation) {
        this.rEducation = rEducation;
    }

    public String getrTel() {
        return rTel;
    }

    public void setrTel(String rTel) {
        this.rTel = rTel;
    }

    public String getrAfterSchool() {
        return rAfterSchool;
    }

    public void setrAfterSchool(String rAfterSchool) {
        this.rAfterSchool = rAfterSchool;
    }

    public String getrAddress() {
        return rAddress;
    }

    public void setrAddress(String rAddress) {
        this.rAddress = rAddress;
    }

    public String getrTime() {
        return rTime;
    }

    public void setrTime(String rTime) {
        this.rTime = rTime;
    }

    public String getrDesp() {
        return rDesp;
    }

    public void setrDesp(String rDesp) {
        this.rDesp = rDesp;
    }
}
