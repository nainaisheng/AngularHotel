package com.hotel.mapper;

import com.hotel.pojo.User;
import com.hotel.pojo.UserRole;

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
public interface UserRoleMapper {
    int insertUserRole(UserRole userRole);

    int deleteUserRoles(String[] id);

    int updateSuperToArea(User user);

    List<UserRole> getUserRoleUserIds(List<User> userList);

    UserRole getUserRole(String id);

    int UpdateAreaToSuper(User user);
}
