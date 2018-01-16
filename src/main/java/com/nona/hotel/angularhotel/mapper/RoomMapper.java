package com.nona.hotel.angularhotel.mapper;

import com.nona.hotel.angularhotel.pojo.Room;
import org.apache.ibatis.annotations.Mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * com.nona.hotel.angularhotel.mapper
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 18
 * @time: 2016/10/18
 */
@Mapper
public interface RoomMapper {

    int getAllRoomCount();

    List<Room> getAllRoomList(HashMap<String, Object> paramMap);

    List<Room> getPartRoomList(HashMap<String, Object> paramMap);

    int getPartRoomCount(String areaId);

    Room getRoomInfoById(String id);

    int deleteRoomById(Map<String, String[]> roomsId);

    int updateRoomState(Room room);

    long getOwnerRoomCount(HashMap<String, Object> paramMap);

    List<Room> getRoomByOwnerId(HashMap<String, Object> paramMap);

}
