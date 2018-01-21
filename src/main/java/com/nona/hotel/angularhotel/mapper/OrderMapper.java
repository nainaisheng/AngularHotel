package com.nona.hotel.angularhotel.mapper;

import com.nona.hotel.angularhotel.pojo.Order;
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
 * @day: 23
 * @time: 2016/10/23
 */
@Mapper
public interface OrderMapper {

    int getOutstandingOrderCount(Map<String, Object> paramMap);

    List<Order> getOutstandingOrders(Map<String, Object> paramMap);


    int getPartOutStandingOrderCount(Map<String, Object> areaId);

    List<Order> getPartOutStandingOrder(Map<String, Object> paramMap);

    int getAllFinishedOrderCount();

    int deleteOrderByRoomId(Map<String, String[]> roomsId);
}