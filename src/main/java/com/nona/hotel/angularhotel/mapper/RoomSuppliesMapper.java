package com.nona.hotel.angularhotel.mapper;

import com.nona.hotel.angularhotel.pojo.RoomSupplies;
import org.apache.ibatis.annotations.Mapper;

import java.util.Map;

/**
 * com.nona.hotel.angularhotel.mapper
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 17
 * @time: 2016/10/17
 */
@Mapper
public interface RoomSuppliesMapper {

    RoomSupplies getRoomSuppliesByRoomId(String roomId);

    int deleteSuppliesByRoomId(Map<String, String[]> roomsId);
}
