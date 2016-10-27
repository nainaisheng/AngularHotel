package com.hotel.service.impl;

import com.hotel.mapper.AreaMapper;
import com.hotel.pojo.Order;
import com.hotel.pojo.Room;
import com.hotel.service.OrderService;
import com.hotel.util.Pager;
import com.hotel.mapper.OrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * com.hotel.service.impl
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 23
 * @time: 2016/10/23
 */
@Service
public class OrderServiceImpl implements OrderService{

    @Autowired
    private OrderMapper orderMapper;
    @Autowired
    private AreaMapper areaMapper;
    @Override
    public List<Order> getOutstandingOrder(Pager<Order> pager, HashMap<String, Object> paramMap) {
        List<Order> orderList = null;
        int result = orderMapper.getOutstandingOrderCount(paramMap);
        pager.setTotalCount(result);
        if (result>0){
            paramMap.put("start",pager.getStart());
            paramMap.put("limit",pager.getLength());

            orderList =  orderMapper.getOutstandingOrders(paramMap);

        }
        return orderList;
    }

    @Override
    public List<Order> getPartOutStandingOrder(Pager<Order> pager, HashMap<String, Object> paramMap) {
        List<Order> orderList = null;
        String areaId = areaMapper.getAreaId((String) paramMap.get("userId"));

        paramMap.put("areaId",areaId);
        int result = orderMapper.getPartOutStandingOrderCount(paramMap);
        pager.setTotalCount(result);
        if (result>0){
            paramMap.put("start",pager.getStart());
            paramMap.put("limit",pager.getLength());
            orderList = orderMapper.getPartOutStandingOrder(paramMap);
        }
        return orderList;
    }

    @Override
    public List<Order> getCompletedOrder(Pager<Order> pager, HashMap<String, Object> paramMap) {
        List<Order> list = this.getOutstandingOrder(pager, paramMap);
        return list;
    }

    @Override
    public List<Order> getPartCompletedOrder(Pager<Order> pager, HashMap<String, Object> paramMap) {
        List<Order> orderList = this.getPartOutStandingOrder(pager, paramMap);
        return orderList;
    }
}
