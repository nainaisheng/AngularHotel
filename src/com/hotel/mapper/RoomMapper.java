package com.hotel.mapper;

import com.hotel.pojo.Room;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * com.hotel.mapper
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 18
 * @time: 2016/10/18
 */
public interface RoomMapper {

    int getAllRoomCount();

    List<Room> getAllRoomList(HashMap<String, Object> paramMap);

    List<Room> getPartRoomList(HashMap<String, Object> paramMap);

    int getPartRoomCount(String areaId);

    Room getRoomInfoById(String id);

    int deleteRoomById(Map<String, String[]> roomsId);
}
