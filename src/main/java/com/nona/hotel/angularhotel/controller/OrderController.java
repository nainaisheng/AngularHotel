package com.nona.hotel.angularhotel.controller;

import com.nona.hotel.angularhotel.pojo.Order;
import com.nona.hotel.angularhotel.pojo.User;
import com.nona.hotel.angularhotel.service.OrderService;
import com.nona.hotel.angularhotel.util.Constant;
import com.nona.hotel.angularhotel.util.DataTableResult;
import com.nona.hotel.angularhotel.util.Pager;
import com.nona.hotel.angularhotel.util.TimeFormatUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;

/**
 * com.nona.hotel.angularhotel.controller
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 23
 * @time: 2016/10/23
 */
@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;

    /**
     * 查询未完成订单
     * 分区域和全部
     * @param pager 分页对象
     * @param session
     * @return
     */
    @RequestMapping(value="/orders/outstanding",method = RequestMethod.POST)
    @ResponseBody
    public DataTableResult<Order> getOutstandingOrder(@RequestBody Pager<Order> pager, HttpSession session){
        List<Order> orderList =null;
        DataTableResult<Order> tableResult = new DataTableResult();
        User user = (User) session.getAttribute(Constant.USERINFO);
        HashMap<String, Object> paramMap = new HashMap<String, Object>();
        paramMap.put("orderStatId",2);
        int roleTypeId = user.getUserRoleTypeId();
        if (roleTypeId==3){

            orderList = orderService.getOutstandingOrder(pager,paramMap);
        }
        else if (roleTypeId == 4) {
                paramMap.put("userId", user.getId());
                orderList = orderService.getPartOutStandingOrder(pager, paramMap);
            }

        if (orderList!=null&&orderList.size()>0){
            for (Order order : orderList) {
                order.setCreateDate(TimeFormatUtil.timeFormat(order.getCreateDate()));
            }
            tableResult.setData(orderList);
            tableResult.setDraw(pager.getDraw());
            tableResult.setRecordsTotal(pager.getTotalCount());
            tableResult.setRecordsFiltered(orderList.size());
        }else {
            tableResult.setRecordsFiltered(0);
        }
        return tableResult;
    }

    /**
     * 查询已完成订单
     * 分区域和全部
     * @param pager
     * @param session
     * @return
     */
    @RequestMapping(value = "/orders/completed",method = RequestMethod.POST)
    @ResponseBody
    public DataTableResult<Order> getCompletedOrder(@RequestBody Pager<Order> pager, HttpSession session){
        List<Order> orderList =null;
        DataTableResult<Order> tableResult = new DataTableResult();
        User user = (User) session.getAttribute(Constant.USERINFO);
        HashMap<String, Object> paramMap = new HashMap<String, Object>();
        paramMap.put("orderStatId",1);
        int roleTypeId = user.getUserRoleTypeId();
        if (roleTypeId==3){

            orderList = orderService.getCompletedOrder(pager,paramMap);
        }
        else if (roleTypeId == 4) {
            paramMap.put("userId", user.getId());
            orderList = orderService.getPartCompletedOrder(pager, paramMap);
        }

        if (orderList!=null&&orderList.size()>0){
            for (Order order : orderList) {
                order.setCreateDate(TimeFormatUtil.timeFormat(order.getCreateDate()));
            }
            tableResult.setData(orderList);
            tableResult.setDraw(pager.getDraw());
            tableResult.setRecordsTotal(pager.getTotalCount());
            tableResult.setRecordsFiltered(orderList.size());
        }else {
            tableResult.setData(null);
            tableResult.setDraw(pager.getDraw());
            tableResult.setRecordsTotal(pager.getTotalCount());
            tableResult.setRecordsFiltered(0);
        }
        return tableResult;
    }

    @RequestMapping("/orders/cancelled")
    @ResponseBody
    public DataTableResult<Order> getCanceledOrder(@RequestBody Pager<Order> pager, HttpSession session) {
        List<Order> orderList = null;
        DataTableResult<Order> tableResult = new DataTableResult();
        User user = (User) session.getAttribute(Constant.USERINFO);
        HashMap<String, Object> paramMap = new HashMap<String, Object>();
        paramMap.put("orderStatId", 3);
        int roleTypeId = user.getUserRoleTypeId();
        if (roleTypeId == 3) {

            orderList = orderService.getCanceledOrder(pager, paramMap);
        } else if (roleTypeId == 4) {
            paramMap.put("userId", user.getId());
            orderList = orderService.getPartCanceledOrder(pager, paramMap);
        }
        if (orderList != null && orderList.size() > 0) {
            for (Order order : orderList) {
                order.setCreateDate(TimeFormatUtil.timeFormat(order.getCreateDate()));
            }
            tableResult.setData(orderList);
            tableResult.setDraw(pager.getDraw());
            tableResult.setRecordsTotal(pager.getTotalCount());
            tableResult.setRecordsFiltered(orderList.size());
        } else {
            tableResult.setData(null);
            tableResult.setDraw(pager.getDraw());
            tableResult.setRecordsTotal(pager.getTotalCount());
            tableResult.setRecordsFiltered(0);
        }
        return tableResult;
    }

}
