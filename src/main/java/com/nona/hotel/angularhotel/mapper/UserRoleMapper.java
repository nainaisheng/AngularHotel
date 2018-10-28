package com.nona.hotel.angularhotel.mapper;

import com.nona.hotel.angularhotel.pojo.User;
import com.nona.hotel.angularhotel.pojo.UserRole;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * com.nona.hotel.angularhotel.mapper
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 25
 * @time: 2016/10/25
 */
@Mapper
public interface UserRoleMapper {
    int insertUserRole(UserRole userRole);

    int deleteUserRoles(String[] id);

    int updateSuperToArea(User user);

    List<UserRole> getUserRoleUserIds(List<User> userList);

    UserRole getUserRole(String id);

    int UpdateAreaToSuper(User user);
}
