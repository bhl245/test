package com.hgkj.model.entity;

/**
 * @Author: 卞虹霖
 * @Date: 2019/5/6 20:09
 * @Version 1.8
 */
public class Train {
    /**
     * 编号
     */
    private int tId;
    /**
     * 培训人
     */
    private String tPerson;
    /**
     * 培训主题
     */
    private String tTheme;
    /**
     * 培训宗旨
     */
    private String tPurpose;
    /**
     * 培训时间
     */
    private String tTime;
    /**
     * 培训地点
     */
    private String tPlace;
    /**
     * 培训人员
     */
    private String tParticipant;
    /**
     * 备注
     */
    private String tDesp;

    public Train() {
    }

    public Train(String tPerson, String tTheme, String tPurpose, String tTime, String tPlace, String tParticipant, String tDesp) {
        this.tPerson = tPerson;
        this.tTheme = tTheme;
        this.tPurpose = tPurpose;
        this.tTime = tTime;
        this.tPlace = tPlace;
        this.tParticipant = tParticipant;
        this.tDesp = tDesp;
    }

    public int gettId() {
        return tId;
    }

    public void settId(int tId) {
        this.tId = tId;
    }

    public String gettPerson() {
        return tPerson;
    }

    public void settPerson(String tPerson) {
        this.tPerson = tPerson;
    }

    public String gettTheme() {
        return tTheme;
    }

    public void settTheme(String tTheme) {
        this.tTheme = tTheme;
    }

    public String gettPurpose() {
        return tPurpose;
    }

    public void settPurpose(String tPurpose) {
        this.tPurpose = tPurpose;
    }

    public String gettTime() {
        return tTime;
    }

    public void settTime(String tTime) {
        this.tTime = tTime;
    }

    public String gettPlace() {
        return tPlace;
    }

    public void settPlace(String tPlace) {
        this.tPlace = tPlace;
    }

    public String gettParticipant() {
        return tParticipant;
    }

    public void settParticipant(String tParticipant) {
        this.tParticipant = tParticipant;
    }

    public String gettDesp() {
        return tDesp;
    }

    public void settDesp(String tDesp) {
        this.tDesp = tDesp;
    }
}
