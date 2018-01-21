package com.nona.hotel.angularhotel.mapper;

import com.nona.hotel.angularhotel.pojo.LoginUser;
import com.nona.hotel.angularhotel.pojo.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * com.nona.hotel.angularhotel.mapper
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 17
 * @time: 2016/10/17
 */
@Mapper
public interface UserMapper {

    User getUser(LoginUser user);

    int updateUser(User user);

    int updatePassword(User user);

    int getAllTenantsCount();

    List<User> getAllTenants(Map<String, Object> paramMap);

    int getPartTenantsCount(Map<String, Object> paramMap);

    List<User> getPartTenants(Map<String, Object> paramMap);

    User getUserById(String id);

    int getAllOwnersCount();

    List<User> getPartOwners(Map<String, Object> paramMap);

    List<User> getAllOwners(Map<String, Object> paramMap);

    int getPartOwnersCount(Map<String, Object> paramMap);

    int insert(User user);
}
