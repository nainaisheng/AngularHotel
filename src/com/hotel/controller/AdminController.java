package com.hotel.controller;

import com.hotel.pojo.Area;
import com.hotel.pojo.AreaIdAndId;
import com.hotel.pojo.Result;
import com.hotel.pojo.User;
import com.hotel.service.AdminService;
import com.hotel.util.Constant;
import com.hotel.util.DataTableResult;
import com.hotel.util.Pager;
import com.hotel.util.TimeFormatUtil;
import com.smallchill.core.constant.Const;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * com.hotel.controller
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 25
 * @time: 2016/10/25
 */
@Controller
@Transactional(rollbackFor = Exception.class)
public class AdminController {


    @Autowired
    private AdminService adminService;

    @RequestMapping(value = "/admins",method = RequestMethod.POST)
    @ResponseBody
    public Result getAdminList(@RequestBody Pager<User> pager, HttpSession session){
        List<User> userList = null;
        User user = (User) session.getAttribute(Constant.USERINFO);
        HashMap<String, Object> paramMap = new HashMap<String, Object>();
        if (user.getUserRoleTypeId()==3) {
            userList = adminService.getAdminList(pager, paramMap);
            return new Result("success",Constant.DEAL_SUCCESS,userList);
        }
        return new Result("fail",Constant.DEAL_FAIL);
    }

    @RequestMapping(value = "/admin/add",method = RequestMethod.POST)
    @ResponseBody
    public Result insertAdmin(@RequestBody User user,HttpSession session) throws Exception {
        User user1 = (User) session.getAttribute(Constant.USERINFO);
        System.out.println(user);
        System.out.println(user1.getUserRoleTypeId());
        user.setCreator(user1.getUserName());
        if (user1.getUserRoleTypeId()==3){
            int result;
            result = adminService.insertAdmin(user);
            if (result==1){
                return new Result("success",Constant.DEAL_SUCCESS);
            }
        }
        return new Result("fail",Constant.DEAL_FAIL);
    }

    @RequestMapping(value = "/admin/delete",method = RequestMethod.POST)
    @ResponseBody
    public Result deleteAdmin(@RequestBody String[] id,HttpSession session){
        try {
            int resul = adminService.deleteAdmins(id);
            if (resul==id.length){
                return new Result("success",Constant.DEAL_SUCCESS);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new Result("fail",Constant.DEAL_FAIL);
        }
        return new Result("fail",Constant.DEAL_FAIL);
    }

    @RequestMapping(value = "/superAdmins",method = RequestMethod.POST)
    @ResponseBody
    public Result getSuperAdminList(@RequestBody Pager<User> pager,HttpSession session){
        HashMap<String, Object> paramMap = new HashMap<String, Object>();
        List<User> userList = null;
        User user = (User) session.getAttribute(Constant.USERINFO);
        if (user.getUserRoleTypeId()==3) {
            userList = adminService.getSuperAdminList(pager,paramMap);
            if (userList!=null&&userList.size()>0){
                DataTableResult<User> tableResult = new DataTableResult<User>();
                tableResult.setDraw(pager.getDraw());
                tableResult.setRecordsTotal(pager.getTotalCount());
                tableResult.setRecordsFiltered(userList.size());
                tableResult.setData(userList);
                return new Result("success",Constant.DEAL_SUCCESS,tableResult);
            }
        }
        return new Result("fail",Constant.DEAL_FAIL);
    }

    @RequestMapping(value = "/superToArea",method = RequestMethod.POST)
    @ResponseBody
    public Result superToArea(@RequestBody AreaIdAndId areaIdAndId, HttpSession session){
        User users = (User) session.getAttribute(Constant.USERINFO);
        String[] areasId = areaIdAndId.getAreasId();
        String[] ids = areaIdAndId.getIds();
        List<User> userList = new ArrayList<User>();
        for (int i = 0; i < areasId.length; i++) {
            User user = new User();
            user.setId(ids[i]);
            user.setAreaId(areasId[i]);
            user.setEditor(users.getUserName());
            user.setEditDate(TimeFormatUtil.formatTime());
            user.setOperateDate(user.getEditDate());
            userList.add(user);
        }
        try {
            int count = adminService.updateSuperToArea(userList);
            if (count==areasId.length){
                return new Result("success",Constant.DEAL_SUCCESS);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new Result("fail",Constant.DEAL_FAIL);
        }

        return new Result("fail",Constant.DEAL_FAIL);
    }

    /**
     * 分页获取管理员列表
     * @param pager 管理员列表
     * @param session
     * @return
     */
    @RequestMapping(value = "/areaAdmins",method = RequestMethod.POST)
    @ResponseBody
    public Result getAreaAdminsList(@RequestBody Pager<User> pager,HttpSession session){
        User user = (User) session.getAttribute(Constant.USERINFO);
        HashMap<String, Object> paramMap = new HashMap<String, Object>();
        if (user.getUserRoleTypeId()==3){
            List<User> userList = adminService.getAreaAdminsList(pager, paramMap);
            if (userList!=null&&userList.size()>0){
                DataTableResult<User> tableResult = new DataTableResult<User>();
                for (User user1 : userList) {
                    user1.setCreateDate(TimeFormatUtil.timeFormat(user1.getCreateDate()));
                }
                tableResult.setDraw(pager.getDraw());
                tableResult.setRecordsTotal(pager.getTotalCount());
                tableResult.setRecordsFiltered(userList.size());
                tableResult.setData(userList);
                return new Result("success",Constant.DEAL_SUCCESS,tableResult);
            }
        }

        return new Result("fail",Constant.DEAL_FAIL);
    }

    /**
     * 区域管理员修改成超级管理员
     * @param ids 管理员id数组
     * @param session
     * @return
     */
    @RequestMapping(value = "/areaToSuper")
    @ResponseBody
    public Result UpdateAreaToSuper(@RequestBody String[] ids,HttpSession session){
        User users = (User) session.getAttribute(Constant.USERINFO);
        List<User> userList = new ArrayList<User>();
        for (int i = 0; i < ids.length; i++) {
            User user = new User();
            user.setId(ids[i]);
            user.setEditor(users.getUserName());
            user.setEditDate(TimeFormatUtil.formatTime());
            user.setOperateDate(user.getEditDate());
            userList.add(user);
        }
        if (users.getUserRoleTypeId()==3){
            try {
                int result = adminService.UpdateAreaToSuper(userList);
                if (result==ids.length){
                    return new Result("success",Constant.DEAL_SUCCESS);
                }
            } catch (Exception e) {
                e.printStackTrace();
                return new Result("fail",Constant.DEAL_FAIL);
            }
        }
        return new Result("fail",Constant.DEAL_FAIL);

    }

    @RequestMapping(value = "/admin/areaUpdate")
    @ResponseBody
    public Result updateAdminArea(@RequestBody AreaIdAndId areaIdAndId, HttpSession session){
        User user = (User) session.getAttribute(Constant.USERINFO);
        if (user.getUserRoleTypeId()==3) {
            int result = adminService.updateAdminArea(areaIdAndId);
            if (result==1){
                return new Result("success",Constant.DEAL_SUCCESS);
            }
        }
        return new Result("fail",Constant.DEAL_FAIL);
    }

}
