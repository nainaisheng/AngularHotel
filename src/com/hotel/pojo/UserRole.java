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
public class UserRole extends BasePoJo {
    private String id;
    private String userId;
    private int userRoleTypeId;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public int getUserRoleTypeId() {
        return userRoleTypeId;
    }

    public void setUserRoleTypeId(int userRoleTypeId) {
        this.userRoleTypeId = userRoleTypeId;
    }

    @Override
    public String toString() {
        return "UserRole{" +
                "id='" + id + '\'' +
                ", userId='" + userId + '\'' +
                ", userRoleTypeId='" + userRoleTypeId + '\'' +super.toString()+
                '}';
    }
}
