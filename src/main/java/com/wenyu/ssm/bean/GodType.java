package com.wenyu.ssm.bean;

/**
 * Author:wenyu
 * 2021/4/14
 */
public class GodType {

    private int id;
    private String tname;

    @Override
    public String toString() {
        return "GodType{" +
                "id=" + id +
                ", tname='" + tname + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }
}
