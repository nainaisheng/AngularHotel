package com.hotel.controller;

import com.hotel.pojo.HomeDisplay;
import com.hotel.pojo.Result;
import com.hotel.pojo.User;
import com.hotel.service.IndexService;
import com.hotel.util.Constant;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
public class IndexController {

    @Resource
    private IndexService indexService;

    @RequestMapping("/home/loading")
    @ResponseBody
    public Result loadingDate(HttpSession session){
        User user = (User) session.getAttribute(Constant.USERINFO);
        if (user.getUserRoleTypeId()==3||user.getUserRoleTypeId()==4){
            HomeDisplay homeDisplay = indexService.loadingAllDate();
            if (homeDisplay!=null){
                return new Result("success",Constant.DEAL_SUCCESS,homeDisplay);
            }
        }
        return new Result("fail",Constant.DEAL_FAIL);
    }
}
