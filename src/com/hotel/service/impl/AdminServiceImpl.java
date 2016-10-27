package com.hotel.service.impl;

import com.hotel.mapper.AdminMapper;
import com.hotel.mapper.AreaMapper;
import com.hotel.mapper.AuthorizationMapper;
import com.hotel.mapper.UserRoleMapper;
import com.hotel.pojo.*;
import com.hotel.service.AdminService;
import com.hotel.util.MD5;
import com.hotel.util.Pager;
import com.hotel.util.TimeFormatUtil;
import com.hotel.util.UUIDUtil;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

/**
 * com.hotel.service.impl
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 25
 * @time: 2016/10/25
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class AdminServiceImpl implements AdminService {
    @Resource
    private AdminMapper adminMapper;
    @Resource
    private AuthorizationMapper authorizationMapper;
    @Resource
    private UserRoleMapper userRoleMapper;
    @Resource
    private AreaMapper areaMapper;
    @Override
    public List<User> getAdminList(Pager<User> pager, HashMap<String, Object> paramMap) {
        List<User> userList = null;
        int result = adminMapper.getAdminCount();
        pager.setTotalCount(result);
        if (result>0) {
            paramMap.put("start",pager.getStart());
            paramMap.put("limit",pager.getLength());
            userList = adminMapper.getAdminList(paramMap);
        }
        return userList;
    }

    @Override
    public int insertAdmin(User user) throws Exception {
            String time = TimeFormatUtil.formatTime();
            user.setCreateDate(time);
            user.setOperateDate(time);
            user.setId(UUIDUtil.getUUID());
            user.setPassword(MD5.digest(user.getPassword()));

            UserRole userRole = new UserRole();
            userRole.setId(UUIDUtil.getUUID());
            userRole.setCreator(user.getCreator());
            userRole.setCreateDate(time);
            userRole.setOperateDate(time);
            userRole.setUserId(user.getId());
            userRole.setUserRoleTypeId(user.getUserRoleTypeId());

            Authorization authorization = new Authorization();
            authorization.setCreator(user.getCreator());
            authorization.setUserRoleId(userRole.getId());
            authorization.setCreateDate(time);
            authorization.setOperateDate(time);
            authorization.setAreaId(user.getAreaId());

            int result = adminMapper.insertAdmin(user);

            if (result == 1) {
                int result1 = userRoleMapper.insertUserRole(userRole);

                if (result1 == 1) {
                    if (user.getAreaId() == null || user.getAreaId().equals("")) {
                        return 1;
                    }
                    int result2 = authorizationMapper.insertAuthorization(authorization);
                    if (result2 == 1) {
                        return 1;
                    }
                }
            }
        return 0;
    }



    public int deleteAdmins(String[] id) throws Exception {
        authorizationMapper.deleteAuthorizations(id);
        userRoleMapper.deleteUserRoles(id);
        int result = adminMapper.deleteAdmins(id);
        if (result>0){
            return result;
        }
        return 0;
    }

    @Override
    public List<User> getSuperAdminList(Pager<User> pager, HashMap<String, Object> paramMap) {
        List<User> userList = null;
        int count = adminMapper.getSuperAdminCount();
        pager.setTotalCount(count);
        if (count>0){
            paramMap.put("start",pager.getStart());
            paramMap.put("limit",pager.getLength());
            userList = adminMapper.getSuperAdminList(paramMap);
        }
        return userList;
    }

    /**
     * 超级管理员修改成区域管理员
     * @param userList
     * @return
     * @throws Exception
     */
    @Override
    public int updateSuperToArea(List<User> userList) throws Exception {
        int count =0;
        for (User user : userList) {
            int result = userRoleMapper.updateSuperToArea(user);
            if ( result==1){
                UserRole userRole = userRoleMapper.getUserRole(user.getId());
                if (userRole!=null){
                    Authorization authorization = new Authorization();
                    authorization.setCreator(user.getEditor());
                    authorization.setCreateDate(user.getEditDate());
                    authorization.setUserRoleId(userRole.getId());
                    authorization.setOperateDate(user.getOperateDate());
                    authorization.setAreaId(user.getAreaId());
                    authorizationMapper.insertAuthorization(authorization);
                }
            }
            count++;

        }
        return count;
    }

    /**
     * 分页获取区域管理员列表
     * @param pager
     * @param paramMap
     * @return
     */
    @Override
    public List<User> getAreaAdminsList(Pager<User> pager, HashMap<String, Object> paramMap) {
        List<User> userList = null;
        int count = adminMapper.getAreaAdminsCount();
        pager.setTotalCount(count);
        if (count>0){
            paramMap.put("start",pager.getStart());
            paramMap.put("limit",pager.getLength());
            userList = adminMapper.getAreaAdminsList(paramMap);

            for (User user : userList) {
                String areaId = areaMapper.getAreaId(user.getId());
                Area area = areaMapper.getAreaById(areaMapper.getAreaId(user.getId()));
                user.setArea(area);
            }
        }
        return userList;
    }

    /**
     * 区域管理员修改成超级管理员
     * @param userList
     * @return
     * @throws Exception
     */
    @Override
    public int UpdateAreaToSuper(List<User> userList) throws Exception {
        String[] id = new String[userList.size()];
        for (int i = 0; i < userList.size(); i++) {
            id[i] = userList.get(i).getId();
        }
        int result = authorizationMapper.deleteAuthorizations(id);
        if (result==userList.size()){
            int count = 0;
            for (User user : userList) {
                int result2 = userRoleMapper.UpdateAreaToSuper(user);
                if (result2==1) {
                    count++;
                }
            }
            if (count==userList.size()){
                return count;
            }
        }
        throw new Exception("更新失败");
    }

    @Override
    public int updateAdminArea(AreaIdAndId areaIdAndId) {
        User user = new User();
        user.setId(areaIdAndId.getIds()[0]);
        user.setAreaId(areaIdAndId.getAreasId()[0]);
        int result = authorizationMapper.updateAdminArea(user);
        return result;
    }

}
