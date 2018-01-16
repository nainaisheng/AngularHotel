package com.nona.hotel.angularhotel.mapper;

import com.nona.hotel.angularhotel.pojo.Authorization;
import com.nona.hotel.angularhotel.pojo.User;
import org.apache.ibatis.annotations.Mapper;

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
public interface AuthorizationMapper {

    int insertAuthorization(Authorization authorization);

    int deleteAuthorizations(String[] id);

    int updateAdminArea(User user);
}
