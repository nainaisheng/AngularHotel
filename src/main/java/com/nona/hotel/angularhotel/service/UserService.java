package com.nona.hotel.angularhotel.service;

import com.nona.hotel.angularhotel.pojo.LoginUser;
import com.nona.hotel.angularhotel.pojo.User;
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
 * @day: 14
 * @time: 2016/10/14
 */
public interface UserService {

    User getUser(LoginUser user);

    int updateUser(User user);

    int updatePassword(User user);

    List<User> getAllTenants(Pager<User> pager, HashMap<String, Object> paramMap);

    List<User> getPartTenants(Pager<User> pager, HashMap<String, Object> paramMap);

    User getUserById(String id);

    int deleteUser(String[] id);

    List<User> getAllOwners(Pager<User> pager, HashMap<String, Object> paramMap);

    List<User> getPartOwners(Pager<User> pager, HashMap<String, Object> paramMap);

    void insert(User user);
}
