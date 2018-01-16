package com.nona.hotel.angularhotel.service;

import com.nona.hotel.angularhotel.pojo.Order;
import com.nona.hotel.angularhotel.util.Pager;

import java.util.HashMap;
import java.util.List;

/**
 * com.nona.hotel.angularhotel.service
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

    List<Order> getCanceledOrder(Pager<Order> pager, HashMap<String, Object> paramMap);

    List<Order> getPartCanceledOrder(Pager<Order> pager, HashMap<String, Object> paramMap);

}
