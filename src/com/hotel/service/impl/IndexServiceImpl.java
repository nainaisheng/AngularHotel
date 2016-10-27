package com.hotel.service.impl;

import com.hotel.mapper.OrderMapper;
import com.hotel.mapper.RoomMapper;
import com.hotel.mapper.UserMapper;
import com.hotel.pojo.HomeDisplay;
import com.hotel.pojo.Order;
import com.hotel.pojo.User;
import com.hotel.service.IndexService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * com.hotel.service.impl
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 26
 * @time: 2016/10/26
 */
@Service
public class IndexServiceImpl implements IndexService {
    @Resource
    private RoomMapper roomMapper;
    @Resource
    private UserMapper userMapper;
    @Resource
    private OrderMapper orderMapper;
    @Override
    public HomeDisplay loadingAllDate() {
        HomeDisplay homeDisplay = new HomeDisplay();
        int ownersCount = userMapper.getAllOwnersCount();
        int tenantsCount = userMapper.getAllTenantsCount();
        int allRoomCount = roomMapper.getAllRoomCount();
        int orderCount = orderMapper.getAllFinishedOrderCount();
        homeDisplay.setOwners(ownersCount);
        homeDisplay.setTenants(tenantsCount);
        homeDisplay.setHouses(allRoomCount);
        homeDisplay.setVolumes(orderCount);

        return homeDisplay;
    }
}
