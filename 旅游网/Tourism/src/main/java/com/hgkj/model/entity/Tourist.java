package com.hgkj.model.entity;

/**
 * @Author: 卞虹霖
 * @Date: 2019/6/24 9:09
 * @Version 1.8
 */
public class Tourist {
    private String touristId;
    private String idCard;
    private String tel;
    private String realName;

    public String getTouristId() {
        return touristId;
    }

    public void setTouristId(String touristId) {
        this.touristId = touristId;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Tourist tourist = (Tourist) o;

        if (touristId != null ? !touristId.equals(tourist.touristId) : tourist.touristId != null) return false;
        if (idCard != null ? !idCard.equals(tourist.idCard) : tourist.idCard != null) return false;
        if (tel != null ? !tel.equals(tourist.tel) : tourist.tel != null) return false;
        if (realName != null ? !realName.equals(tourist.realName) : tourist.realName != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = touristId != null ? touristId.hashCode() : 0;
        result = 31 * result + (idCard != null ? idCard.hashCode() : 0);
        result = 31 * result + (tel != null ? tel.hashCode() : 0);
        result = 31 * result + (realName != null ? realName.hashCode() : 0);
        return result;
    }
}
