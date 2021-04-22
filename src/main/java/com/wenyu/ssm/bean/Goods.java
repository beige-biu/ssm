package com.wenyu.ssm.bean;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * Author:wenyu
 * 2021/4/14
 */
public class Goods {

    private int gid;
    private String gname;
    @DateTimeFormat(pattern = "yyyy-mm-dd")
    private Date pubDate;
    private String picture;
    private float price;
    private int star;
    private String intro;

    private GodType godType;

    @Override
    public String toString() {
        return "Goods{" +
                "id=" + gid +
                ", gname='" + gname + '\'' +
                ", pubDate=" + pubDate +
                ", picture='" + picture + '\'' +
                ", price=" + price +
                ", star=" + star +
                ", intro='" + intro + '\'' +
                ", godType=" + godType +
                '}';
    }

    public int getgId() {
        return gid;
    }

    public void setgId(int id) {
        this.gid = id;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    public Date getPubDate() {
        return pubDate;
    }

    public void setPubDate(Date pubDate) {
        this.pubDate = pubDate;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getStar() {
        return star;
    }

    public void setStar(int star) {
        this.star = star;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public GodType getGodType() {
        return godType;
    }

    public void setGodType(GodType godType) {
        this.godType = godType;
    }
}
