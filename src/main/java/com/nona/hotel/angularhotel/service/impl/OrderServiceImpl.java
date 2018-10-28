package com.nona.hotel.angularhotel.service.impl;

import com.nona.hotel.angularhotel.mapper.AreaMapper;
import com.nona.hotel.angularhotel.mapper.OrderMapper;
import com.nona.hotel.angularhotel.pojo.Order;
import com.nona.hotel.angularhotel.service.OrderService;
import com.nona.hotel.angularhotel.util.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * com.nona.hotel.angularhotel.service.impl
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
    public List<Order> getOutstandingOrder(Pager<Order> pager, Map<String, Object> paramMap) {
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
    public List<Order> getPartOutStandingOrder(Pager<Order> pager, Map<String, Object> paramMap) {
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
    public List<Order> getCompletedOrder(Pager<Order> pager, Map<String, Object> paramMap) {
        List<Order> list = this.getOutstandingOrder(pager, paramMap);
        return list;
    }

    @Override
    public List<Order> getPartCompletedOrder(Pager<Order> pager, Map<String, Object> paramMap) {
        List<Order> orderList = this.getPartOutStandingOrder(pager, paramMap);
        return orderList;
    }

    @Override
    public List<Order> getCanceledOrder(Pager<Order> pager, Map<String, Object> paramMap) {

        return  this.getOutstandingOrder(pager,paramMap);
    }

    @Override
    public List<Order> getPartCanceledOrder(Pager<Order> pager, Map<String, Object> paramMap) {
        return this.getPartOutStandingOrder(pager,paramMap);
    }

}
