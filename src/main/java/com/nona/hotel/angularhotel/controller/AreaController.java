package com.nona.hotel.angularhotel.controller;

import com.nona.hotel.angularhotel.pojo.Area;
import com.nona.hotel.angularhotel.pojo.AreaPhoto;
import com.nona.hotel.angularhotel.pojo.Result;
import com.nona.hotel.angularhotel.pojo.User;
import com.nona.hotel.angularhotel.service.AreaService;
import com.nona.hotel.angularhotel.service.ArticleService;
import com.nona.hotel.angularhotel.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * com.nona.hotel.angularhotel.controller
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 18
 * @time: 2016/10/18
 */
@Controller
public class AreaController {
    @Autowired
    private AreaService areaService;

    @Autowired
    private ArticleService articleService;
    /**
     * 上传图片
     * @param file  图片文件
     * @param areaId    地区id
     * @param session
     * @return
     * @throws IOException  io异常
     */
    @RequestMapping(value = "/area/uploadPhotos", method = RequestMethod.POST)
    @ResponseBody
    public Result uploadPhoto(@RequestParam MultipartFile file, @RequestParam String areaId, HttpSession session) throws IOException {
        User user = (User) session.getAttribute(Constant.USERINFO);
        AreaPhoto areaPhoto = new AreaPhoto();
        areaPhoto.setId(UUIDUtil.getUUID());
        areaPhoto.setAreaId(areaId);
        areaPhoto.setCreator(user.getRealName());
        if (!file.isEmpty()){
            int result = areaService.uploadPhoto(file, areaPhoto);

            if (result>0){
               return new Result(Constant.SUCCESS_CODE, Constant.DEAL_SUCCESS);
            }
        }
        return new Result(Constant.FAIL_CODE, Constant.DEAL_FAIL);
    }



    /**
     * 第一次管理员的级别查询
     * 如果是超级管理员 查询所有的省份
     * 如果是省级管理员 查询当前所在省的信息 以及所有子地区的信息
     * 如果是市级管理员 查询当前市级信息 和 父级省的信息
     * @param session
     * @return
     */
    @RequestMapping(value = "/area/provinces",method = RequestMethod.GET)
    @ResponseBody
    public Result getProvinces(HttpSession session){
        List<Area> areaList = null;
        AreaUtils areaUtils = new AreaUtils();
        User user = (User) session.getAttribute(Constant.USERINFO);
        HashMap<String,Object> paramMap = new HashMap<>();
        paramMap.put("userId",user.getId());
        int userRoleTypeId = user.getUserRoleTypeId();
        //全国级别
        if (userRoleTypeId==3){
            areaList = areaService.getAllProvinces();
            areaUtils.setType("国家级");
            areaUtils.setSonAreaList(areaList);
        }
        if (userRoleTypeId==4){
           Area area  = areaService.getProvince(paramMap);
            areaUtils.setSelf(area);
            //省级
            if (area.getParentId().equals("0")){
                areaUtils.setType("省级");
                areaUtils.setHasParent(false);
                List<Area> sonArea = areaService.getSonArea(area);
                areaUtils.setSonAreaList(sonArea);
            }
            //市级
            else{
                areaUtils.setHasParent(true);
                areaUtils.setType("市级");
                area = areaService.getParentArea(area.getParentId());
                areaUtils.setParentArea(area);
            }
        }
        return new Result(Constant.SUCCESS_CODE,Constant.DEAL_SUCCESS,areaUtils);
    }

    /**
     * 查询当前省下面所有地区信息
     * @param id    省份id
     * @param session
     * @return
     */
    @RequestMapping(value = "/area/city/{id}")
    @ResponseBody
    public Result getCity(@PathVariable String id,HttpSession session){
        Area area = new Area();
        area.setId(id);
        List<Area> sonArea = areaService.getSonArea(area);
        if (sonArea!=null&&!sonArea.isEmpty()) {
            return new Result(Constant.SUCCESS_CODE, Constant.DEAL_SUCCESS, sonArea);
        }
        return new Result(Constant.FAIL_CODE,Constant.DEAL_FAIL);
    }

    /**
     * 获取图片列表
     * 超管获取所有
     * 省级获取省级及其子地区
     * 市级只能获取当前地区
     *
     * @param pager
     * @param session
     * @return
     */
    @RequestMapping(value = "/area/photos",method = RequestMethod.POST)
    @ResponseBody
    public DataTableResult<AreaPhoto> getPhotoList(@RequestBody Pager<AreaPhoto> pager, HttpSession session){
        DataTableResult<AreaPhoto> result = new DataTableResult<>();
        List<AreaPhoto> photoList  = null;
        User user = (User) session.getAttribute(Constant.USERINFO);
        int userRoleTypeId = user.getUserRoleTypeId();
        Map<String, Object> paramMap = new HashMap<>();
        if (userRoleTypeId==3){
            photoList = areaService.getAllAreaPhotoList(pager, paramMap);
        }
        if (userRoleTypeId==4){
            paramMap.put("userId",user.getId());
            photoList = areaService.getPartAreaPhotoList(pager,paramMap);
        }
        if (photoList!=null&&!photoList.isEmpty()){
            for (AreaPhoto areaPhoto : photoList) {
                areaPhoto.setCreateDate(TimeFormatUtil.timeFormat(areaPhoto.getCreateDate()));
            }
            result.setDraw(pager.getDraw());
            result.setData(photoList);
            result.setRecordsTotal(pager.getTotalCount());
            result.setRecordsFiltered(photoList.size());
            return result;
        }
        return result;
    }

    /**
     * 删除图片
     * @param photoId
     * @param session
     * @return
     */
    @RequestMapping(value = "/photos/delete", method = RequestMethod.POST)
    @ResponseBody
    public Result deletePhoto(@RequestBody String[] photoId,HttpSession session ){
        int result = areaService.deletePhoto(photoId);
        if (result==photoId.length){
            return new Result(Constant.SUCCESS_CODE,Constant.DEAL_SUCCESS);
        }
        return new Result(Constant.FAIL_CODE,Constant.DEAL_FAIL);
    }

    /**
     * 获取管理员所在区域
     * @param id
     * @param session
     * @return
     */
    @RequestMapping(value = "/area/{id}")
    @ResponseBody
    public Result getAreaById(@PathVariable String id,HttpSession session){
        Area area = areaService.getAreaById(id);
        if (area!=null){
            return new Result(Constant.SUCCESS_CODE,Constant.DEAL_SUCCESS,area);
        }
        return new Result(Constant.FAIL_CODE,Constant.DEAL_FAIL);
    }




}
