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

public class Order extends BasePoJo {

    private String id;
    private String orderStateId;
    private User user;
    private Room room;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }


    public String getOrderStateId() {
        return orderStateId;
    }

    public void setOrderStateId(String orderStateId) {
        this.orderStateId = orderStateId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    @Override
    public String toString() {
        return "Order{" +
                "id='" + id + '\'' +
                ", orderStateId='" + orderStateId + '\'' +
                ", user=" + user.toString() +
                ", room=" + room.toString() +
                '}';
    }
}
