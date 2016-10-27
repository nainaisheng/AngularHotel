package com.hotel.controller;

import com.hotel.pojo.LoginUser;
import com.hotel.pojo.Result;
import com.hotel.pojo.User;
import com.hotel.service.UserService;
import com.hotel.util.Constant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

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

/*    @RequestMapping("/login")
    public String login(){
     *//*   Login login = new Login();
        login.setUsername("鸣人");
        login.setPassword("root");*//*
        LoginUser login = new LoginUser();
        login.setLoginName("鸣人");
        login.setLoginPassword("root");
        User user = userService.getUser(login);
        System.out.println(user.getUserRoleTypeId());
        return "";
    }*/

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
                session.setAttribute(Constant.USERINFO, user);
                return new Result("success", Constant.LOGIN_SUCCESS, user);
            }else{
                return new Result("exception",Constant.LOGIN_EXCEPTION);
            }
        }
            return new Result("fail",Constant.LOGIN_FAIL);
    }
}
