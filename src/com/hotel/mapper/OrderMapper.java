package com.hotel.mapper;

import com.hotel.pojo.Order;

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
 * @day: 23
 * @time: 2016/10/23
 */
public interface OrderMapper {

    int getOutstandingOrderCount(HashMap<String, Object> paramMap);

    List<Order> getOutstandingOrders(HashMap<String, Object> paramMap);


    int getPartOutStandingOrderCount(HashMap<String, Object> areaId);

    List<Order> getPartOutStandingOrder(HashMap<String, Object> paramMap);

    int getAllFinishedOrderCount();

    int deleteOrderByRoomId(Map<String, String[]> roomsId);
}