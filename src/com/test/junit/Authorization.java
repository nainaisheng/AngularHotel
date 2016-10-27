package com.test.junit;

import com.hotel.pojo.BasePoJo;

/**
 * com.test.junit
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 22
 * @time: 2016/10/22
 */
public class Authorization extends BasePoJo {
    private int id;
    private String userRoleId;
    private String areaId;

    public int getId() {
        return id;
    }

    public void setId(int id) {
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
}
