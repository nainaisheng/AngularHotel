package com.nona.hotel.angularhotel.service;

import com.nona.hotel.angularhotel.pojo.Room;
import com.nona.hotel.angularhotel.util.Pager;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * com.nona.hotel.angularhotel.service
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 18
 * @time: 2016/10/18
 */
public interface RoomService {
    List<Room> getAllRoom(Pager<Room> pager, HashMap<String, Object> paramMap);
    List<Room> getPartRoom(Pager<Room> pager, HashMap<String, Object> paramMap);

    Room getRoomInfoById(String id);

    int deleteRoomsById(Map<String, String[]> roomsId);

    boolean updateRoomState(Room room);

    List<Room> getRoomByOwnerId(Pager<Room> pager, HashMap<String, Object> paramMap);

}
