package com.nona.hotel.angularhotel.pojo;

/**
 * com.nona.hotel.angularhotel.pojo
 *
 * @desc 投诉实体
 * @author:EumJi
 * @year: 2016
 * @month: 11
 * @day: 22
 * @time: 2016/11/22
 */
public class Complaint extends BasePoJo {
    private String id;
    private String title;
    private String content;
    private String reply;
    private String userId;
    private String roomId;
    private User user;
    private Room room;
    private int complaintStateId;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getReply() {
        return reply;
    }

    public void setReply(String reply) {
        this.reply = reply;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getRoomId() {
        return roomId;
    }

    public void setRoomId(String roomId) {
        this.roomId = roomId;
    }

    public int getComplaintStateId() {
        return complaintStateId;
    }

    public void setComplaintStateId(int complaintStateId) {

        this.complaintStateId = complaintStateId;
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
        return "Complaint{" +
                "id='" + id + '\'' +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", reply='" + reply + '\'' +
                ", userId='" + userId + '\'' +
                ", roomId='" + roomId + '\'' +
                ", user=" + user +
                ", room=" + room +
                ", complaintStateId=" + complaintStateId +
                '}';
    }


}
