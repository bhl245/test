package com.hgkj.model.entity;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/6 19:22
 * @Version 1.8
 */
public class Staff {
    /**
     * 员工编号
     */
    private int stId;
    /**
     * 员工姓名
     */
    private String stName;
    /**
     * 年龄
     */
    private String stAge;
    /**
     * 性别
     */
    private String stSex;
    /**
     * 出生日期
     */
    private String stBirth;
    /**
     * 身份证号
     */
    private String stIDCard;
    /**
     * 民族
     */
    private String stNation;
    /**
     * 婚姻状况
     */
    private String stMarriage;
    /**
     * 政治面貌
     */
    private String stPolitical;
    /**
     * 籍贯
     */
    private String stNative;
    /**
     * 联系电话
     */
    private String stTel;
    /**
     * 家庭住址
     */
    private String stAddress;
    /**
     * 毕业学校
     */
    private String stAfterSchool;
    /**
     * 专业
     */
    private String stMajor;
    /**
     * 学历
     */
    private String stEducation;
    /**
     * 上岗时间
     */
    private String stStartTime;
    /**
     * 部门编号
     */
    private Department department;
    /**
     * 部门工种
     */
    private String stWork;
    /**
     * 登记人员
     */
    private String stRegister;
    /**
     * 登记时间
     */
    private String stTime;
    /**
     * 备注信息
     */
    private String stDesp;

    public Staff() {
    }

    public Staff(String stName, String stAge, String stSex, String stBirth, String stIDCard, String stNation, String stMarriage, String stPolitical, String stNative, String stTel, String stAddress, String stAfterSchool, String stMajor, String stEducation, String stStartTime, Department department, String stWork, String stRegister, String stTime, String stDesp) {
        this.stName = stName;
        this.stAge = stAge;
        this.stSex = stSex;
        this.stBirth = stBirth;
        this.stIDCard = stIDCard;
        this.stNation = stNation;
        this.stMarriage = stMarriage;
        this.stPolitical = stPolitical;
        this.stNative = stNative;
        this.stTel = stTel;
        this.stAddress = stAddress;
        this.stAfterSchool = stAfterSchool;
        this.stMajor = stMajor;
        this.stEducation = stEducation;
        this.stStartTime = stStartTime;
        this.department = department;
        this.stWork = stWork;
        this.stRegister = stRegister;
        this.stTime = stTime;
        this.stDesp = stDesp;
    }

    public Staff(int stId, String stName, String stAge, String stSex, String stBirth, String stIDCard, String stNation,
                 String stMarriage, String stPolitical, String stNative, String stTel, String stAddress, String stAfterSchool,
                 String stMajor, String stEducation, String stStartTime, Department department, String stWork, String stRegister,
                 String stTime,
                 String stDesp) {
        this.stId = stId;
        this.stName = stName;
        this.stAge = stAge;
        this.stSex = stSex;
        this.stBirth = stBirth;
        this.stIDCard = stIDCard;
        this.stNation = stNation;
        this.stMarriage = stMarriage;
        this.stPolitical = stPolitical;
        this.stNative = stNative;
        this.stTel = stTel;
        this.stAddress = stAddress;
        this.stAfterSchool = stAfterSchool;
        this.stMajor = stMajor;
        this.stEducation = stEducation;
        this.stStartTime = stStartTime;
        this.department = department;
        this.stWork = stWork;
        this.stRegister = stRegister;
        this.stTime = stTime;
        this.stDesp = stDesp;
    }

    public int getStId() {
        return stId;
    }

    public void setStId(int stId) {
        this.stId = stId;
    }

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }

    public String getStName() {
        return stName;
    }

    public void setStName(String stName) {
        this.stName = stName;
    }

    public String getStAge() {
        return stAge;
    }

    public void setStAge(String stAge) {
        this.stAge = stAge;
    }

    public String getStSex() {
        return stSex;
    }

    public void setStSex(String stSex) {
        this.stSex = stSex;
    }

    public String getStBirth() {
        return stBirth;
    }

    public void setStBirth(String stBirth) {
        this.stBirth = stBirth;
    }

    public String getStIDCard() {
        return stIDCard;
    }

    public void setStIDCard(String stIDCard) {
        this.stIDCard = stIDCard;
    }

    public String getStNation() {
        return stNation;
    }

    public void setStNation(String stNation) {
        this.stNation = stNation;
    }

    public String getStMarriage() {
        return stMarriage;
    }

    public void setStMarriage(String stMarriage) {
        this.stMarriage = stMarriage;
    }

    public String getStPolitical() {
        return stPolitical;
    }

    public void setStPolitical(String stPolitical) {
        this.stPolitical = stPolitical;
    }

    public String getStNative() {
        return stNative;
    }

    public void setStNative(String stNative) {
        this.stNative = stNative;
    }

    public String getStTel() {
        return stTel;
    }

    public void setStTel(String stTel) {
        this.stTel = stTel;
    }

    public String getStAddress() {
        return stAddress;
    }

    public void setStAddress(String stAddress) {
        this.stAddress = stAddress;
    }

    public String getStAfterSchool() {
        return stAfterSchool;
    }

    public void setStAfterSchool(String stAfterSchool) {
        this.stAfterSchool = stAfterSchool;
    }

    public String getStMajor() {
        return stMajor;
    }

    public void setStMajor(String stMajor) {
        this.stMajor = stMajor;
    }

    public String getStEducation() {
        return stEducation;
    }

    public void setStEducation(String stEducation) {
        this.stEducation = stEducation;
    }

    public String getStStartTime() {
        return stStartTime;
    }

    public void setStStartTime(String stStartTime) {
        this.stStartTime = stStartTime;
    }

    public String getStWork() {
        return stWork;
    }

    public void setStWork(String stWork) {
        this.stWork = stWork;
    }

    public String getStRegister() {
        return stRegister;
    }

    public void setStRegister(String stRegister) {
        this.stRegister = stRegister;
    }

    public String getStTime() {
        return stTime;
    }

    public void setStTime(String stTime) {
        this.stTime = stTime;
    }

    public String getStDesp() {
        return stDesp;
    }

    public void setStDesp(String stDesp) {
        this.stDesp = stDesp;
    }
}
