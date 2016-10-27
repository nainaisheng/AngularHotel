package com.hotel.service;

import com.hotel.pojo.Order;
import com.hotel.pojo.Room;
import com.hotel.util.Pager;

import java.util.HashMap;
import java.util.List;

/**
 * com.hotel.service
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 23
 * @time: 2016/10/23
 */
public interface OrderService {

    List<Order> getOutstandingOrder(Pager<Order> pager, HashMap<String, Object> paramMap);

    List<Order> getPartOutStandingOrder(Pager<Order> pager, HashMap<String, Object> paramMap);

    List<Order> getCompletedOrder(Pager<Order> pager, HashMap<String, Object> paramMap);

    List<Order> getPartCompletedOrder(Pager<Order> pager, HashMap<String, Object> paramMap);
}
