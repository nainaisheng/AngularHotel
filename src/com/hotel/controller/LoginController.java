package com.hotel.controller;

import com.hotel.pojo.LoginUser;
import com.hotel.pojo.Result;
import com.hotel.pojo.User;
import com.hotel.service.AreaService;
import com.hotel.service.UserService;
import com.hotel.util.Constant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * com.hotel.controller
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 16
 * @time: 2016/10/16
 */
@Controller
public class LoginController {

    @Autowired
    private UserService userService;


    @Resource
    private AreaService areaService;

    /**
     * 管理员登陆
     * @param loginUser 登陆的用户
     * @param session
     * @return  登陆的结果
     */
    @ResponseBody
    @RequestMapping(value="/user/login",method = RequestMethod.POST)
    public Result login(@RequestBody LoginUser loginUser, HttpSession session){
        User user = userService.getUser(loginUser);
        if (user != null){
            if (user.getUserStateId()==1) {
                if (user.getUserRoleTypeId()==4){
                    user.setArea(areaService.getAreaById(user.getId()));
                }

                session.setAttribute(Constant.USERINFO, user);
                session.setMaxInactiveInterval(60000000);
                return new Result("success", Constant.LOGIN_SUCCESS, user);
            }else{
                return new Result("exception",Constant.LOGIN_EXCEPTION);
            }
        }
            return new Result("fail",Constant.LOGIN_FAIL);
    }
}
