package com.hgkj.model.entity;

public class Teacher {
    private Integer teacherId;

    private String teacherUsername;

    private String teacherPassword;

    private String teacherName;

    private String teacherSex;

    private String teacherTel;

    public Teacher() {
    }

    public Teacher(String teacherUsername, String teacherPassword) {
        this.teacherUsername = teacherUsername;
        this.teacherPassword = teacherPassword;
    }

    public Integer getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(Integer teacherId) {
        this.teacherId = teacherId;
    }

    public String getTeacherUsername() {
        return teacherUsername;
    }

    public void setTeacherUsername(String teacherUsername) {
        this.teacherUsername = teacherUsername == null ? null : teacherUsername.trim();
    }

    public String getTeacherPassword() {
        return teacherPassword;
    }

    public void setTeacherPassword(String teacherPassword) {
        this.teacherPassword = teacherPassword == null ? null : teacherPassword.trim();
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName == null ? null : teacherName.trim();
    }

    public String getTeacherSex() {
        return teacherSex;
    }

    public void setTeacherSex(String teacherSex) {
        this.teacherSex = teacherSex == null ? null : teacherSex.trim();
    }

    public String getTeacherTel() {
        return teacherTel;
    }

    public void setTeacherTel(String teacherTel) {
        this.teacherTel = teacherTel == null ? null : teacherTel.trim();
    }
}