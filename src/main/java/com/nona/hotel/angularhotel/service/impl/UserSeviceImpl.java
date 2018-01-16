package com.nona.hotel.angularhotel.service.impl;

import com.nona.hotel.angularhotel.mapper.AreaMapper;
import com.nona.hotel.angularhotel.mapper.UserMapper;
import com.nona.hotel.angularhotel.pojo.LoginUser;
import com.nona.hotel.angularhotel.pojo.User;
import com.nona.hotel.angularhotel.service.UserService;
import com.nona.hotel.angularhotel.util.MD5;
import com.nona.hotel.angularhotel.util.Pager;
import com.nona.hotel.angularhotel.util.TimeFormatUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * com.nona.hotel.angularhotel.service.impl
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 17
 * @time: 2016/10/17
 */
@Service
public class UserSeviceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;
    @Autowired
    private AreaMapper areaMapper;

    /**
     * 账号登陆
     *
     * @param loginuser
     * @return
     */
    @Override
    public User getUser(LoginUser loginuser) {
        loginuser.setLoginPassword(MD5.digest(loginuser.getLoginPassword()));
        User user = userMapper.getUser(loginuser);
        return user;
    }


    /**
     * 修改用户信息
     * @param user
     * @return
     */
    @Override
    public int updateUser(User user) {
        int result = 0;
        try {
            //设置编辑时间
            user.setEditDate(TimeFormatUtil.formatTime());
            result = userMapper.updateUser(user);
        }catch (Exception e){
            e.printStackTrace();
            return result;
        }

        return result;
    }

    /**
     * 修改密码
     * @param user
     * @return
     */
    @Override
    public int updatePassword(User user) {
        user.setEditDate(TimeFormatUtil.formatTime());
        return userMapper.updatePassword(user);

    }

    /**
     * 查询所有房客
     * @param pager
     * @param paramMap
     * @return
     */
    @Override
    public List<User> getAllTenants(Pager<User> pager, HashMap<String, Object> paramMap) {

        List<User> userList = null;
        int tenantsCount = userMapper.getAllTenantsCount();
        pager.setTotalCount(tenantsCount);
        if (tenantsCount>0){
            paramMap.put("start",pager.getStart());
            paramMap.put("limit",pager.getLength());
            userList = userMapper.getAllTenants(paramMap);
        }
        return userList;
    }

    /**
     * 获取地区房客
     * @param pager 分页对象
     * @param paramMap 分页信息存放map
     * @return  房客集合
     */
    @Override
    public List<User> getPartTenants(Pager<User> pager, HashMap<String, Object> paramMap) {
        List<User> userList = null;

        try {

            String userId = (String) paramMap.get("userId");
            String areaId = areaMapper.getAreaId(userId);
            paramMap.put("areaId", areaId);
            int partTenantsCount = userMapper.getPartTenantsCount(paramMap);
            pager.setTotalCount(partTenantsCount);
            if (partTenantsCount > 0) {
                paramMap.put("start", pager.getStart());
                paramMap.put("limit", pager.getLength());
                userList = userMapper.getPartTenants(paramMap);
            }
        }catch (Exception e){
            e.printStackTrace();
            return userList;
        }
        return userList;
    }

    /**
     * 通过id获取用户
     * @param id 用户id
     * @return 用户对象
     */
    @Override
    public User getUserById(String id) {
        User user = userMapper.getUserById(id);
        return user;
    }

    @Override
    public int deleteUser(String[] id) {
        return 0;
    }

    @Override
    public List<User> getAllOwners(Pager<User> pager, HashMap<String, Object> paramMap) {
        List<User> userList = null;
        try {
            int ownersCount = userMapper.getAllOwnersCount();
            pager.setTotalCount(ownersCount);
            if (ownersCount>0){

                paramMap.put("start", pager.getStart());
                paramMap.put("limit", pager.getLength());
                userList = userMapper.getAllOwners(paramMap);
            }
        }catch (Exception e){
            e.printStackTrace();
            return userList;
        }
        return userList;
    }

    /**
     * f分页获取地区房主
     * @param pager
     * @param paramMap
     * @return
     */
    @Override
    public List<User> getPartOwners(Pager<User> pager, HashMap<String, Object> paramMap) {
        List<User> userList = null;

        try {

            String userId = (String) paramMap.get("userId");
            String areaId = areaMapper.getAreaId(userId);
            paramMap.put("areaId",areaId);
            System.out.println(areaId);
            int ownersCount = userMapper.getPartOwnersCount(paramMap);
            System.out.println(ownersCount);

            pager.setTotalCount(ownersCount);
            if (ownersCount>0){
                paramMap.put("start", pager.getStart());
                paramMap.put("limit", pager.getLength());
                userList = userMapper.getPartOwners(paramMap);
                System.out.println(userList);
            }
        }catch (Exception e){
            e.printStackTrace();
            return userList;
        }
        return userList;
    }

    @Override
    public void insert(User user) {
        int result = userMapper.insert(user);
    }

}
