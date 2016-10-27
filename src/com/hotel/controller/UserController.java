package com.hotel.controller;

import com.hotel.pojo.LoginUser;
import com.hotel.pojo.Result;
import com.hotel.pojo.User;
import com.hotel.service.UserService;
import com.hotel.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;

/**
 * com.hotel.controller
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 17
 * @time: 2016/10/17
 */
@Controller
public class UserController {
    @Autowired
    private UserService userService;

    /**
     * 修改用户信息前获取永不信息
     *
     * @param session
     * @return
     */
    @RequestMapping(value = "/user/getinfo", method = RequestMethod.GET)
    @ResponseBody
    public User getUserInfo(HttpSession session) {
        User user = (User) session.getAttribute(Constant.USERINFO);
        user.setCreateDate(TimeFormatUtil.timeFormat(user.getCreateDate()));
        user.setOperateDate(TimeFormatUtil.timeFormat(user.getOperateDate()));
        return user;
    }

    @RequestMapping(value = "/user/{id}",method = RequestMethod.GET)
    @ResponseBody
    public User getUserById(@PathVariable String id, HttpSession session) {
        User user = userService.getUserById(id);
        user.setCreateDate(TimeFormatUtil.timeFormat(user.getCreateDate()));
        return user;
    }

    /**
     * 修改管理员信息
     *
     * @param user
     * @param session
     * @return
     */
    @RequestMapping(value = "/user/update", method = RequestMethod.POST)
    @ResponseBody
    public Result updateUser(@RequestBody User user, HttpSession session) {
        int result = userService.updateUser(user);
        System.out.println("result "+result);
        if (result>0){
            return new Result("success",Constant.DEAL_SUCCESS);
        }
        return new Result("fail",Constant.DEAL_FAIL);
    }

    /**
     *  修改密码
     * @param password 新密码
     * @param session  保存用户信息的sesson
     * @return
     */
    @RequestMapping(value = "/user/editPassword/{password}",method = RequestMethod.POST)
    @ResponseBody
    public Result updatePassword(@PathVariable String password, HttpSession session){

        User user = (User) session.getAttribute(Constant.USERINFO);
        user.setPassword(MD5.digest(password));
        int result = userService.updatePassword(user);
        if (result>0){
            return new Result("success",Constant.DEAL_SUCCESS);
        }
        return new Result("fail",Constant.DEAL_FAIL);
    }

    /**
     * 分页查询房客列表
     * 分超级管理员和地区管理员
     * @param pager
     * @param session
     * @return
     */
    @RequestMapping(value = "/tenants",method = RequestMethod.POST)
    @ResponseBody
    public DataTableResult<User> getUserList(@RequestBody Pager<User> pager,HttpSession session){
        DataTableResult<User> tableResult = new DataTableResult();
        List<User> userList = null;
        User user = (User) session.getAttribute(Constant.USERINFO);
        HashMap<String, Object> paramMap = new HashMap<String, Object>();
        //超级管理员
        if (user.getUserRoleTypeId()==3){
            userList =  userService.getAllTenants(pager,paramMap);
        }
        if (user.getUserRoleTypeId()==4){
            paramMap.put("userId",user.getId());
            userList = userService.getPartTenants(pager, paramMap);
        }
        if (userList!=null&&userList.size()>0) {
            for (User user1 : userList) {
                user1.setCreateDate(TimeFormatUtil.timeFormat(user.getCreateDate()));
            }
            tableResult.setDraw(pager.getDraw());
            tableResult.setRecordsTotal(pager.getTotalCount());
            tableResult.setRecordsFiltered(userList.size());
            tableResult.setData(userList);
            return tableResult;
        }
        return tableResult;
    }

    /**
     * 删除用户 待实现  太复杂
     * @param id
     * @param session
     * @return
     */
    @RequestMapping(value = "/user/delete",method = RequestMethod.POST)
    @ResponseBody
    public Result deleteUsers(@RequestBody String[] id,HttpSession session){
        int result = userService.deleteUser(id);
        return null;
    }

    /**
     * 分页查询房主
     * @param pager
     * @param session
     * @return
     */
    @RequestMapping(value = "/owners",method = RequestMethod.POST)
    @ResponseBody
    public DataTableResult<User> getOwnerList(@RequestBody Pager<User> pager,HttpSession session) {
        DataTableResult<User> tableResult = new DataTableResult();
        List<User> userList = null;
        User user = (User) session.getAttribute(Constant.USERINFO);
        HashMap<String, Object> paramMap = new HashMap<String, Object>();
        if (user.getUserRoleTypeId() == 3) {
            userList = userService.getAllOwners(pager, paramMap);
        }
        else if (user.getUserRoleTypeId() == 4) {
            paramMap.put("userId", user.getId());
            userList = userService.getPartOwners(pager, paramMap);
        }
        if (userList!=null&&userList.size() > 0) {
            for (User user1 : userList) {
                user1.setCreateDate(TimeFormatUtil.timeFormat(user.getCreateDate()));
            }
            tableResult.setDraw(pager.getDraw());
            tableResult.setRecordsTotal(pager.getTotalCount());
            tableResult.setRecordsFiltered(userList.size());
            tableResult.setData(userList);
        }
        return tableResult;

    }
}


