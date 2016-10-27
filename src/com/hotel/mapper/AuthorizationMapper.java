package com.hotel.mapper;

import com.hotel.pojo.Authorization;
import com.hotel.pojo.User;

import java.util.List;

/**
 * com.hotel.mapper
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 25
 * @time: 2016/10/25
 */
public interface AuthorizationMapper {

    int insertAuthorization(Authorization authorization);

    int deleteAuthorizations(String[] id);

    int updateAdminArea(User user);
}
