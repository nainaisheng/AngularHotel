package com.hotel.mapper;

import com.hotel.pojo.LoginUser;
import com.hotel.pojo.RoomSupplies;
import com.hotel.pojo.User;

import java.util.Map;

/**
 * com.hotel.mapper
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 17
 * @time: 2016/10/17
 */
public interface RoomSuppliesMapper {

    RoomSupplies getRoomSuppliesByRoomId(String roomId);

    int deleteSuppliesByRoomId(Map<String, String[]> roomsId);
}
