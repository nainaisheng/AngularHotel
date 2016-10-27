package com.hotel.util;

import com.hotel.pojo.Area;

import java.util.List;

/**
 * com.hotel.util
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 23
 * @time: 2016/10/23
 */
public class AreaUtils {
    private String type;    //用户级别  全国级 省级 市级
    private boolean hasParent;
    private Area parentArea;
    private Area self;
    private List<Area> sonAreaList;    //下级集合

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public boolean isHasParent() {
        return hasParent;
    }

    public void setHasParent(boolean hasParent) {
        this.hasParent = hasParent;
    }

    public Area getParentArea() {
        return parentArea;
    }

    public void setParentArea(Area parentArea) {
        this.parentArea = parentArea;
    }

    public Area getSelf() {
        return self;
    }

    public void setSelf(Area self) {
        this.self = self;
    }

    public List<Area> getSonAreaList() {
        return sonAreaList;
    }

    public void setSonAreaList(List<Area> sonAreaList) {
        this.sonAreaList = sonAreaList;
    }
}
