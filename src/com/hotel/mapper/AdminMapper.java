package com.hotel.mapper;


import com.hotel.pojo.Manager;
import com.hotel.pojo.User;
import com.hotel.pojo.UserRole;

import java.util.HashMap;
import java.util.List;

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
