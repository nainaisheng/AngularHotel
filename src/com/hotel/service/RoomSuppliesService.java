package com.hotel.service;

import com.hotel.pojo.RoomSupplies;

import java.util.Map;

/**
 * com.hotel.service
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 21
 * @time: 2016/10/21
 */
public interface RoomSuppliesService {
    RoomSupplies getRoomSuppliesByRoomId(String roomId);

    int deleteSuppliesByRoomId(Map<String, String[]> roomsId);
}
