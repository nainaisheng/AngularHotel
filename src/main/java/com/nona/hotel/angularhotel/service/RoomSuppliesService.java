package com.nona.hotel.angularhotel.service;

import com.nona.hotel.angularhotel.pojo.RoomSupplies;

import java.util.Map;

/**
 * com.nona.hotel.angularhotel.service
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
