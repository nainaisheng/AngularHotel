package com.nona.hotel.angularhotel.pojo;

/**
 * com.nona.hotel.angularhotel.pojo
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 23
 * @time: 2016/10/23
 */
public class Area extends BasePoJo {
    private String id;
    private String parentId;
    private String areaName;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName;
    }

    @Override
    public String toString() {

        return "Area{" +
                "id='" + id + '\'' +
                ", parentId='" + parentId + '\'' +
                ", areaName='" + areaName + '\'' +
                super.toString()+
                '}';
    }
}
