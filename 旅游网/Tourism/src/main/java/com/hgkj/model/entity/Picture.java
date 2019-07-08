package com.hgkj.model.entity;

/**
 * @Author: 卞虹霖
 * @Date: 2019/6/24 9:09
 * @Version 1.8
 */
public class Picture {
    private int pictureId;
    private String introduction;
    private String name;
    private Line line;

    public Line getLine() {
        return line;
    }

    public void setLine(Line line) {
        this.line = line;
    }

    public int getPictureId() {
        return pictureId;
    }

    public void setPictureId(int pictureId) {
        this.pictureId = pictureId;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Picture picture = (Picture) o;

        if (pictureId != picture.pictureId) return false;
        if (introduction != null ? !introduction.equals(picture.introduction) : picture.introduction != null) return false;
        if (name != null ? !name.equals(picture.name) : picture.name != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = pictureId;
        result = 31 * result + (introduction != null ? introduction.hashCode() : 0);
        result = 31 * result + (name != null ? name.hashCode() : 0);
        return result;
    }
}
