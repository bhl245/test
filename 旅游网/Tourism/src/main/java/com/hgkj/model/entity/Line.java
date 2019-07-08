package com.hgkj.model.entity;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

/**
 * @Author: 卞虹霖
 * @Date: 2019/6/24 9:09
 * @Version 1.8
 */
public class Line {
    private String lineId;
    private String lineName;
    private String days;
    private String vehicle;
    private String introduction;
    private String reason;
    private String arrange;
    private BigDecimal price;
    private Integer teamBuy;
    private BigDecimal teamBuyPrice;
    private String beginTime;
    private String endTime;
    private String onTime;
    private LineType lineType;
    private Set<Picture> pictureSet = new HashSet<>();

    public Set<Picture> getPictureSet() {
        return pictureSet;
    }

    public void setPictureSet(Set<Picture> pictureSet) {
        this.pictureSet = pictureSet;
    }

    public LineType getLineType() {
        return lineType;
    }

    public void setLineType(LineType lineType) {
        this.lineType = lineType;
    }

    public String getLineId() {
        return lineId;
    }

    public void setLineId(String lineId) {
        this.lineId = lineId;
    }

    public String getLineName() {
        return lineName;
    }

    public void setLineName(String lineName) {
        this.lineName = lineName;
    }

    public String getDays() {
        return days;
    }

    public void setDays(String days) {
        this.days = days;
    }

    public String getVehicle() {
        return vehicle;
    }

    public void setVehicle(String vehicle) {
        this.vehicle = vehicle;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getArrange() {
        return arrange;
    }

    public void setArrange(String arrange) {
        this.arrange = arrange;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Integer getTeamBuy() {
        return teamBuy;
    }

    public void setTeamBuy(Integer teamBuy) {
        this.teamBuy = teamBuy;
    }

    public BigDecimal getTeamBuyPrice() {
        return teamBuyPrice;
    }

    public void setTeamBuyPrice(BigDecimal teamBuyPrice) {
        this.teamBuyPrice = teamBuyPrice;
    }

    public String getBeginTime() {
        return beginTime;
    }

    public void setBeginTime(String beginTime) {
        this.beginTime = beginTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public String getOnTime() {
        return onTime;
    }

    public void setOnTime(String onTime) {
        this.onTime = onTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Line line = (Line) o;

        if (lineId != null ? !lineId.equals(line.lineId) : line.lineId != null) return false;
        if (lineName != null ? !lineName.equals(line.lineName) : line.lineName != null) return false;
        if (days != null ? !days.equals(line.days) : line.days != null) return false;
        if (vehicle != null ? !vehicle.equals(line.vehicle) : line.vehicle != null) return false;
        if (introduction != null ? !introduction.equals(line.introduction) : line.introduction != null) return false;
        if (reason != null ? !reason.equals(line.reason) : line.reason != null) return false;
        if (arrange != null ? !arrange.equals(line.arrange) : line.arrange != null) return false;
        if (price != null ? !price.equals(line.price) : line.price != null) return false;
        if (teamBuy != null ? !teamBuy.equals(line.teamBuy) : line.teamBuy != null) return false;
        if (teamBuyPrice != null ? !teamBuyPrice.equals(line.teamBuyPrice) : line.teamBuyPrice != null) return false;
        if (beginTime != null ? !beginTime.equals(line.beginTime) : line.beginTime != null) return false;
        if (endTime != null ? !endTime.equals(line.endTime) : line.endTime != null) return false;
        if (onTime != null ? !onTime.equals(line.onTime) : line.onTime != null) return false;
        return true;
    }

    @Override
    public int hashCode() {
        int result = lineId != null ? lineId.hashCode() : 0;
        result = 31 * result + (lineName != null ? lineName.hashCode() : 0);
        result = 31 * result + (days != null ? days.hashCode() : 0);
        result = 31 * result + (vehicle != null ? vehicle.hashCode() : 0);
        result = 31 * result + (introduction != null ? introduction.hashCode() : 0);
        result = 31 * result + (reason != null ? reason.hashCode() : 0);
        result = 31 * result + (arrange != null ? arrange.hashCode() : 0);
        result = 31 * result + (price != null ? price.hashCode() : 0);
        result = 31 * result + (teamBuy != null ? teamBuy.hashCode() : 0);
        result = 31 * result + (teamBuyPrice != null ? teamBuyPrice.hashCode() : 0);
        result = 31 * result + (beginTime != null ? beginTime.hashCode() : 0);
        result = 31 * result + (endTime != null ? endTime.hashCode() : 0);
        result = 31 * result + (onTime != null ? onTime.hashCode() : 0);
        return result;
    }
}
