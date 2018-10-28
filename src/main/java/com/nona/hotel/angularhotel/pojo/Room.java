package com.nona.hotel.angularhotel.pojo;

/**
 * com.nona.hotel.angularhotel.pojo
 *
 * @desc 房间实体类
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 18
 * @time: 2016/10/18
 */
public class Room extends BasePoJo {
    private String id;  //房间编号
    private String roomName;    //房间名
    private String price;   //价格
    private String description; //房间描述
    private String address; //地址
    private String tips;    //入住提示
    private String userId;
    private String userName;
    private int roomState;
    private RoomSupplies roomSupplies;//房间描述对象



    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTips() {
        return tips;
    }

    public void setTips(String tips) {
        this.tips = tips;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public RoomSupplies getRoomSupplies() {
        return roomSupplies;
    }

    public void setRoomSupplies(RoomSupplies roomSupplies) {

        this.roomSupplies = roomSupplies;
    }

    public int getRoomState() {
        return roomState;
    }

    public void setRoomState(int roomState) {
        this.roomState = roomState;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Override
    public String toString() {
        return "Room{" +
                "id='" + id + '\'' +
                ", roomName='" + roomName + '\'' +
                ", price='" + price + '\'' +
                ", description='" + description + '\'' +
                ", address='" + address + '\'' +
                ", tips='" + tips + '\'' +
                ", userId='" + userId + '\'' +
                ", roomSupplies=" + roomSupplies +
                ", roomState=" + roomState +
                ","+super.toString()+
                '}';
    }
}
