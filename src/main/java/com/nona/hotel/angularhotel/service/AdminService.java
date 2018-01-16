package com.nona.hotel.angularhotel.service;

import com.nona.hotel.angularhotel.pojo.AreaIdAndId;
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
 * @day: 25
 * @time: 2016/10/25
 */
public interface AdminService {
    List<User> getAdminList(Pager<User> pager, HashMap<String, Object> paramMap);

    int insertAdmin(User user) throws Exception;

    int deleteAdmins(String[] id) throws Exception;

    List<User> getSuperAdminList(Pager<User> pager, HashMap<String, Object> paramMap);

    int updateSuperToArea(List<User> userList) throws Exception;

    List<User> getAreaAdminsList(Pager<User> pager, HashMap<String, Object> paramMap);

    int UpdateAreaToSuper(List<User> userList) throws Exception;

    int updateAdminArea(AreaIdAndId areaIdAndId);
}
