package com.hgkj.model.entity;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/6 20:13
 * @Version 1.8
 */
public class Punish {
    /**
     * 编号
     */
    private int pId;
    /**
     * 奖惩主题
     */
    private String pTheme;
    /**
     * 奖惩类型
     */
    private String pType;
    /**
     * 奖惩金额
     */
    private int pMoney;
    /**
     * 奖惩时间
     */
    private String pTime;
    /**
     * 奖惩原因
     */
    private String pDesp;

    public Punish() {
    }

    public Punish(String pTheme, String pType, int pMoney, String pTime, String pDesp) {
        this.pTheme = pTheme;
        this.pType = pType;
        this.pMoney = pMoney;
        this.pTime = pTime;
        this.pDesp = pDesp;
    }

    public int getpId() {
        return pId;
    }

    public void setpId(int pId) {
        this.pId = pId;
    }

    public String getpTheme() {
        return pTheme;
    }

    public void setpTheme(String pTheme) {
        this.pTheme = pTheme;
    }

    public String getpType() {
        return pType;
    }

    public void setpType(String pType) {
        this.pType = pType;
    }

    public int getpMoney() {
        return pMoney;
    }

    public void setpMoney(int pMoney) {
        this.pMoney = pMoney;
    }

    public String getpTime() {
        return pTime;
    }

    public void setpTime(String pTime) {
        this.pTime = pTime;
    }

    public String getpDesp() {
        return pDesp;
    }

    public void setpDesp(String pDesp) {
        this.pDesp = pDesp;
    }
}
