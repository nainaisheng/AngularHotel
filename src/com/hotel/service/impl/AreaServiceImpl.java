package com.hotel.service.impl;

import com.hotel.mapper.AreaMapper;
import com.hotel.pojo.Area;
import com.hotel.pojo.AreaPhoto;
import com.hotel.service.AreaService;
import com.hotel.util.Pager;
import com.hotel.util.PhotoUploadUtil;
import com.hotel.util.TimeFormatUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;


/**
 * com.hotel.service.impl
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 18
 * @time: 2016/10/18
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class AreaServiceImpl implements AreaService {

    @Autowired
    private AreaMapper areaMapper;

    /**
     * 上传图片
     * @param file
     * @param areaPhoto
     * @return
     */
    @Override
    public int uploadPhoto(CommonsMultipartFile file, AreaPhoto areaPhoto) {
        int result = 0;
        String filename = System.currentTimeMillis()+file.getOriginalFilename();
        try {
            File files = new File(file.getOriginalFilename());
            file.transferTo(files);


            result = PhotoUploadUtil.uploadPhoto(files, filename);
        } catch (IOException e) {
            e.printStackTrace();
            return 0;
        }
        if (result==1){
            areaPhoto.setUrl(PhotoUploadUtil.basePath+PhotoUploadUtil.getFilePath(filename));

            areaPhoto.setCreateDate(TimeFormatUtil.formatTime());
            areaPhoto.setOperateDate(TimeFormatUtil.formatTime());
            int res = areaMapper.insertAreaPhoto(areaPhoto);

            if (res==0){
                return 0;
            }

        }
        return result;
    }

    /**
     * 获取地区id
     * @param userId
     * @return
     */
    @Override
    public String getAreaId(String userId) {
        String areaId = areaMapper.getAreaId(userId);
        return areaId;
    }

    /**
     * 获取所有省份
     * 用于下拉列表显示
     * @return
     */
    @Override
    public List<Area> getAllProvinces() {
        List<Area> areaList = areaMapper.getAllProvinces();
        return areaList;
    }

    /**
     * 获取省份
     * @param paramMap
     * @return
     */
    @Override
    public Area getProvince(HashMap<String, Object> paramMap) {
        Area area = areaMapper.getProvinces(paramMap);
        return area;
    }

    /**
     * 获取子地区信息
     * @param area
     * @return
     */
    @Override
    public List<Area> getSonArea(Area area) {

        List<Area> areaList = areaMapper.getAreaByParentId(area);

        return areaList;
    }

    /**
     * 获得父级地区信息
     * @param parentId
     * @return
     */
    @Override
    public Area getParentArea(String parentId) {
        Area area = areaMapper.getParentArea(parentId);
        return area;
    }

    /**
     * 获取所有地区分页图片列表
     * @param pager
     * @param paramMap
     * @return
     */
    @Override
    public List<AreaPhoto> getAllAreaPhotoList(Pager<AreaPhoto> pager, HashMap<String, Object> paramMap) {
        List<AreaPhoto> photoList = null;
        int count = areaMapper.getAllAreaPhotoCount();
        pager.setTotalCount(count);
        if (count>0){
            paramMap.put("start",pager.getStart());
            paramMap.put("limit",pager.getLength());
            photoList = areaMapper.getAllAreaPhoto(paramMap);

        }
        return photoList;
    }

    /**
     * 获取区域图片列表
     * @param pager
     * @param paramMap
     * @return
     */
    @Override
    public List<AreaPhoto> getPartAreaPhotoList(Pager<AreaPhoto> pager, HashMap<String, Object> paramMap) {
        List<AreaPhoto> photoList = null;
        int count = 0;
        String areaId = areaMapper.getAreaId((String) paramMap.get("userId"));
        paramMap.put("areaId",areaId);
        Area area = areaMapper.getAreaById(areaId);
        /*
        省级管理员查询图片
         */
        pager.setTotalCount(count);
        count = areaMapper.getPartPhotoCountByPro(paramMap);
            if (count>0){
                paramMap.put("start",pager.getStart());
                paramMap.put("limit",pager.getLength());
                photoList = areaMapper.getPartAreaPhotoByPro(paramMap);


            }
        return photoList;
    }

    /**
     * 删除图片id数组删除图片
     * @param photoId
     * @return
     */
    @Override
    public int deletePhoto(String[] photoId) {
        List<String> photos = Arrays.asList(photoId);
        List<AreaPhoto> photoList = areaMapper.getPhotoByList(photos);

        String[] fileNames = new String[photoList.size()];
        try {

            for (int i = 0; i < photoList.size(); i++) {
                fileNames[i] = photoList.get(i).getUrl().substring(33);

            }
            int result = PhotoUploadUtil.deletePhoto(fileNames);
            if (result == photoId.length) {
                int count = areaMapper.deletePhotoByList(photos);
                if (result == count) {
                    return count;
                }
            }
        }catch (Exception e){
            e.printStackTrace();
            return 0;
        }
        return 0;
    }

    /**
     * 通过id得到area
     * @param id
     * @return
     */
    @Override
    public Area getAreaById(String id) {
        String areaId = getAreaId(id);
        return  areaMapper.getAreaById(areaId);
    }
}
