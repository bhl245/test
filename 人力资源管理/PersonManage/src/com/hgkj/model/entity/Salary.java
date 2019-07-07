package com.hgkj.model.entity;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/6 21:28
 * @Version 1.8
 */
public class Salary {
    /**
     * 编号
     */
    private int saId;
    /**
     * 员工编号
     */
    private Staff staff;
    /**
     * 当前月份
     */
    private String saMonth;
    /**
     * 基本工资
     */
    private int saBasic;
    /**
     * 加班费
     */
    private int saOvertime;
    /**
     * 工龄费
     */
    private int saWorking;
    /**
     * 考勤费
     */
    private int saAttendance;
    /**
     * 旷工费
     */
    private int saAbsenteeism;
    /**
     * 保险费
     */
    private int saInsurance;

    public Salary() {
    }

    public Salary(Staff staff, String saMonth, int saBasic, int saOvertime, int saWorking, int saAttendance, int saAbsenteeism, int saInsurance) {
        this.staff = staff;
        this.saMonth = saMonth;
        this.saBasic = saBasic;
        this.saOvertime = saOvertime;
        this.saWorking = saWorking;
        this.saAttendance = saAttendance;
        this.saAbsenteeism = saAbsenteeism;
        this.saInsurance = saInsurance;
    }

    public int getSaId() {
        return saId;
    }

    public void setSaId(int saId) {
        this.saId = saId;
    }

    public Staff getStaff() {
        return staff;
    }

    public void setStaff(Staff staff) {
        this.staff = staff;
    }

    public String getSaMonth() {
        return saMonth;
    }

    public void setSaMonth(String saMonth) {
        this.saMonth = saMonth;
    }

    public int getSaBasic() {
        return saBasic;
    }

    public void setSaBasic(int saBasic) {
        this.saBasic = saBasic;
    }

    public int getSaOvertime() {
        return saOvertime;
    }

    public void setSaOvertime(int saOvertime) {
        this.saOvertime = saOvertime;
    }

    public int getSaWorking() {
        return saWorking;
    }

    public void setSaWorking(int saWorking) {
        this.saWorking = saWorking;
    }

    public int getSaAttendance() {
        return saAttendance;
    }

    public void setSaAttendance(int saAttendance) {
        this.saAttendance = saAttendance;
    }

    public int getSaAbsenteeism() {
        return saAbsenteeism;
    }

    public void setSaAbsenteeism(int saAbsenteeism) {
        this.saAbsenteeism = saAbsenteeism;
    }

    public int getSaInsurance() {
        return saInsurance;
    }

    public void setSaInsurance(int saInsurance) {
        this.saInsurance = saInsurance;
    }

}
