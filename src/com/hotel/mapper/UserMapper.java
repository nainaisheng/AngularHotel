package com.hotel.mapper;

import com.hotel.pojo.LoginUser;
import com.hotel.pojo.User;

import java.util.HashMap;
import java.util.List;

/**
 * com.hotel.mapper
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 17
 * @time: 2016/10/17
 */
public interface UserMapper {

    User getUser(LoginUser user);

    int updateUser(User user);

    int updatePassword(User user);

    int getAllTenantsCount();

    List<User> getAllTenants(HashMap<String, Object> paramMap);

    int getPartTenantsCount(HashMap<String, Object> paramMap);

    List<User> getPartTenants(HashMap<String, Object> paramMap);

    User getUserById(String id);

    int getAllOwnersCount();

    List<User> getPartOwners(HashMap<String, Object> paramMap);

    List<User> getAllOwners(HashMap<String, Object> paramMap);

    int getPartOwnersCount(HashMap<String, Object> paramMap);

    int insert(User user);
}
