package com.hotel.pojo;

/**
 * com.hotel.pojo
 *
 * @desc  房间具体信息描述实体类
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 18
 * @time: 2016/10/18
 */
public class RoomSupplies extends BasePoJo {
    private int id;
    private String roomId;
    private int isHot;  //是否有热水
    private int isWifi; //wifi
    private int isAriConditioner;    //空调
    private int IsIceBox;   //冰箱
    private int IsToiletries;    //洗漱用品
    private int IsWasher;   //洗衣机
    private int IsTelevision;    //电视

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRoomId() {
        return roomId;
    }

    public void setRoomId(String roomId) {
        this.roomId = roomId;
    }

    public int getIsHot() {
        return isHot;
    }

    public void setIsHot(int isHot) {
        this.isHot = isHot;
    }

    public int getIsWifi() {
        return isWifi;
    }

    public void setIsWifi(int isWifi) {
        this.isWifi = isWifi;
    }

    public int getIsAriConditioner() {
        return isAriConditioner;
    }

    public void setIsAriConditioner(int isAriConditioner) {
        this.isAriConditioner = isAriConditioner;
    }

    public int getIsIceBox() {
        return IsIceBox;
    }

    public void setIsIceBox(int isIceBox) {
        IsIceBox = isIceBox;
    }

    public int getIsToiletries() {
        return IsToiletries;
    }

    public void setIsToiletries(int isToiletries) {
        IsToiletries = isToiletries;
    }

    public int getIsWasher() {
        return IsWasher;
    }

    public void setIsWasher(int isWasher) {
        IsWasher = isWasher;
    }

    public int getIsTelevision() {
        return IsTelevision;
    }

    public void setIsTelevision(int isTelevision) {
        IsTelevision = isTelevision;
    }

    @Override
    public String toString() {
        return "RoomSupplies{" +
                "id=" + id +
                ", roomId='" + roomId + '\'' +
                ", isHot=" + isHot +
                ", isWifi=" + isWifi +
                ", isAriConditioner=" + isAriConditioner +
                ", IsIceBox=" + IsIceBox +
                ", IsToiletries=" + IsToiletries +
                ", IsWasher=" + IsWasher +
                ", IsTelevision=" + IsTelevision +
                '}';
    }
}
