package com.hotel.pojo;

/**
 * com.hotel.pojo
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 25
 * @time: 2016/10/25
 */
public class Authorization extends BasePoJo{
    private String id;
    private String userRoleId;
    private String areaId;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUserRoleId() {
        return userRoleId;
    }

    public void setUserRoleId(String userRoleId) {
        this.userRoleId = userRoleId;
    }

    public String getAreaId() {
        return areaId;
    }

    public void setAreaId(String areaId) {
        this.areaId = areaId;
    }

    @Override
    public String toString() {
        return "Authorization{" +
                "id='" + id + '\'' +
                ", userRoleId='" + userRoleId + '\'' +
                ", areaId='" + areaId + '\'' +super.toString()+
                '}';
    }
}
