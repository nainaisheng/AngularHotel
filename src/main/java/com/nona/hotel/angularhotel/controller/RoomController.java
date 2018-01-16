package com.nona.hotel.angularhotel.controller;

import com.nona.hotel.angularhotel.pojo.Result;
import com.nona.hotel.angularhotel.pojo.Room;
import com.nona.hotel.angularhotel.pojo.User;
import com.nona.hotel.angularhotel.service.RoomService;
import com.nona.hotel.angularhotel.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * com.nona.hotel.angularhotel.controller
 *
 * @desc 房间管理的controller
 *
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 18
 * @time: 2016/10/18
 */
@Controller
public class RoomController {

    @Autowired
    private RoomService roomService;

    /**
     * 分页查询房间列表
     * 如果是超级管理员 分页查询所有房间
     * 如果是地区管理员 分页查询当前地区所有房间
     * @param pager 分页对象
     * @param session
     * @return  房间集合及分页信息
     */
    @RequestMapping(value = "/rooms",method = RequestMethod.POST)
    @ResponseBody
    public DataTablesResult room(@RequestBody Pager<Room> pager, HttpSession session){
        List<Room> roomList =null;
        DataTablesResult tableResult = new DataTablesResult();
        User user = (User) session.getAttribute(Constant.USERINFO);
        HashMap<String, Object> paramMap = new HashMap<String, Object>();
        int roleTypeId = user.getUserRoleTypeId();
        if (roleTypeId == 3){
            roomList = roomService.getAllRoom(pager,paramMap);
        }
        else if (roleTypeId == 4){
            paramMap.put("userId",user.getId());
            roomList = roomService.getPartRoom(pager, paramMap);
        }
        if (roomList.size()>0) {
            for (Room room : roomList) {
                room.setCreateDate(TimeFormatUtil.timeFormat(room.getCreateDate()));
            }
            tableResult.setDraw(pager.getDraw());
            tableResult.setRecordsTotal(pager.getTotalCount());
            tableResult.setRecordsFiltered(roomList.size());
            tableResult.setData(roomList);
        }

        return tableResult;

    }

    /**
     * 通过房间号获取房间信息
     * @param id 房间id
     * @param session
     * @return
     */
    @RequestMapping(value = "/rooms/{id}",method = RequestMethod.GET)
    @ResponseBody
    public Room getRoomById(@PathVariable String id,HttpSession session){
        Room  room = roomService.getRoomInfoById(id);
        room.setOperateDate(TimeFormatUtil.timeFormat(room.getOperateDate()));
        room.setCreateDate(TimeFormatUtil.timeFormat(room.getOperateDate()));
        return room;
    }

    /**
     * 删除房间信息
     * 级联房间订单信息
     * 级联删除房间的设备信息
     * @param id    房间id数组
     * @param session
     * @return 删除结果信息
     */
    @RequestMapping(value = "/rooms/delete",method = RequestMethod.POST)
    @ResponseBody
    public Result deleteRoom(@RequestBody String[] id,HttpSession session){
       Map<String,String[]> roomsId = new HashMap<String, String[]>();
        roomsId.put("roomsId",id);
        int result = roomService.deleteRoomsById(roomsId);
        if (result== id.length){
            return new Result("success",Constant.DEAL_SUCCESS);
        }
        return new Result("fail",Constant.DEAL_FAIL);
    }

    @RequestMapping("/room/edit")
    @ResponseBody
    public Result updateRoomState(@RequestBody Room room){
        boolean result = roomService.updateRoomState(room);
        if (result){
            return new Result("success",Constant.DEAL_SUCCESS);
        }
        return new Result("fail",Constant.DEAL_FAIL);
    }

    @RequestMapping("/owner/rooms/{ownerId}")
    @ResponseBody
    public DataTableResult<Room> getRoomByOwnerId(@RequestBody Pager<Room> pager, @PathVariable String ownerId, HttpSession session){
        List<Room> roomList =null;
        DataTableResult<Room> tableResult = new DataTableResult();
        User user = (User) session.getAttribute(Constant.USERINFO);
        HashMap<String, Object> paramMap = new HashMap<String, Object>();
        paramMap.put("ownerId",ownerId);
        roomList = roomService.getRoomByOwnerId(pager,paramMap);

        tableResult.setDraw(pager.getDraw());
        tableResult.setRecordsTotal(pager.getTotalCount());
        if (roomList!=null&&roomList.size()>0) {
            tableResult.setRecordsFiltered(roomList.size());
            tableResult.setData(roomList);
        }else {
            tableResult.setRecordsFiltered(0);
            tableResult.setData(null);
        }
        return tableResult;
    }

}
