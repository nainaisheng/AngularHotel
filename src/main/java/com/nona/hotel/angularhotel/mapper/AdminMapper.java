package com.nona.hotel.angularhotel.mapper;


import com.nona.hotel.angularhotel.pojo.Manager;
import com.nona.hotel.angularhotel.pojo.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.HashMap;
import java.util.List;

@Mapper
public interface AdminMapper {

	int validateManager(Manager manager);

	Manager getManagerInfo(Manager manager);

	List<User> getAdminList(HashMap<String, Object> paramMap);

	int getAdminCount();

	int insertAdmin(User user);

    int deleteAdmins(String[] id);

	int getSuperAdminCount();

	List<User> getSuperAdminList(HashMap<String, Object> paramMap);

	int getAreaAdminsCount();

	List<User> getAreaAdminsList(HashMap<String, Object> paramMap);
}
