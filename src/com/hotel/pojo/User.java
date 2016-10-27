package com.hotel.pojo;

/**
 * com.hotel.pojo
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 17
 * @time: 2016/10/17
 */
public class User extends BasePoJo {
    private String id;
    private String userName;
    private String realName;//真实姓名
    private String sex; //性别
    private String telPhone;    //电话
    private String email;   //邮箱
    private String password;    //密码
    private String address;
    private int userRoleTypeId; //用户类型
    private int userStateId;
    private String areaId;  //用户id
    private Area area;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getTelPhone() {
        return telPhone;
    }

    public void setTelPhone(String telPhone) {
        this.telPhone = telPhone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getUserRoleTypeId() {
        return userRoleTypeId;
    }

    public void setUserRoleTypeId(int userRoleTypeId) {

        this.userRoleTypeId = userRoleTypeId;
    }

    public int getUserStateId() {
        return userStateId;
    }

    public void setUserStateId(int userStateId) {
        this.userStateId = userStateId;
    }

    public String getAreaId() {
        return areaId;
    }

    public void setAreaId(String areaId) {
        this.areaId = areaId;
    }

    public Area getArea() {
        return area;
    }

    public void setArea(Area area) {
        this.area = area;
    }

    @Override
    public String toString() {
        return "User{" +
                "id='" + id + '\'' +
                ", userName='" + userName + '\'' +
                ", realName='" + realName + '\'' +
                ", sex='" + sex + '\'' +
                ", telPhone='" + telPhone + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", address='" + address + '\'' +
                ", userRoleTypeId=" + userRoleTypeId +
                ", userStateId=" + userStateId +
                ", areaId='" + areaId + '\'' +
                ", area="  +super.toString()+
                '}';
    }
}
