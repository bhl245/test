package com.hgkj.model.entity;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/6 18:13
 * @Version 1.8
 */
public class Admin {
    /**
     * 管理员编号
     */
    private int aId;
    /**
     * 管理员名称
     */
    private String aName;
    /**
     * 管理员密码
     */
    private String aPwd;

    public Admin() {
    }

    public Admin(String aName, String aPwd) {
        this.aName = aName;
        this.aPwd = aPwd;
    }

    public Admin(int aId, String aPwd) {
        this.aId = aId;
        this.aPwd = aPwd;
    }

    public Admin(String aPwd) {
        this.aPwd = aPwd;
    }

    public int getaId() {
        return aId;
    }

    public void setaId(int aId) {
        this.aId = aId;
    }

    public String getaName() {
        return aName;
    }

    public void setaName(String aName) {
        this.aName = aName;
    }

    public String getaPwd() {
        return aPwd;
    }

    public void setaPwd(String aPwd) {
        this.aPwd = aPwd;
    }
}
