package com.nona.hotel.angularhotel.service.impl;

import com.nona.hotel.angularhotel.mapper.AreaMapper;
import com.nona.hotel.angularhotel.model.PhotoResult;
import com.nona.hotel.angularhotel.pojo.Area;
import com.nona.hotel.angularhotel.pojo.AreaPhoto;
import com.nona.hotel.angularhotel.service.AreaService;
import com.nona.hotel.angularhotel.util.Pager;
import com.nona.hotel.angularhotel.util.QiNiuPhotoUploadUtil;
import com.nona.hotel.angularhotel.util.TimeFormatUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;


/**
 * com.nona.hotel.angularhotel.service.impl
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

    @Autowired
    private QiNiuPhotoUploadUtil qiNiuPhotoUploadUtil;

    /**
     * 上传图片
     *
     * @param file
     * @param areaPhoto
     * @return
     */
    @Override
    public int uploadPhoto(CommonsMultipartFile file, AreaPhoto areaPhoto) {
        //文件名
        String filename = System.currentTimeMillis() + file.getOriginalFilename();
        //上传图片
        PhotoResult result = qiNiuPhotoUploadUtil.uploadPhoto(file.getOriginalFilename(), filename);
        if (result.getSuccess() == 1) {
            areaPhoto.setUrl(result.getUrl());
            areaPhoto.setCreateDate(TimeFormatUtil.formatTime());
            areaPhoto.setOperateDate(TimeFormatUtil.formatTime());
            int insertCount = areaMapper.insertAreaPhoto(areaPhoto);

            return insertCount;
        }

        return 0;
    }

    /**
     * 获取地区id
     *
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
     *
     * @return
     */
    @Override
    public List<Area> getAllProvinces() {
        List<Area> areaList = areaMapper.getAllProvinces();
        return areaList;
    }

    /**
     * 获取省份
     *
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
     *
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
     *
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
     *
     * @param pager
     * @param paramMap
     * @return
     */
    @Override
    public List<AreaPhoto> getAllAreaPhotoList(Pager<AreaPhoto> pager, HashMap<String, Object> paramMap) {
        List<AreaPhoto> photoList = null;
        int count = areaMapper.getAllAreaPhotoCount();
        pager.setTotalCount(count);
        if (count > 0) {
            paramMap.put("start", pager.getStart());
            paramMap.put("limit", pager.getLength());
            photoList = areaMapper.getAllAreaPhoto(paramMap);

        }
        return photoList;
    }

    /**
     * 获取区域图片列表
     *
     * @param pager
     * @param paramMap
     * @return
     */
    @Override
    public List<AreaPhoto> getPartAreaPhotoList(Pager<AreaPhoto> pager, HashMap<String, Object> paramMap) {
        List<AreaPhoto> photoList = null;
        int count = 0;
        String areaId = areaMapper.getAreaId((String) paramMap.get("userId"));
        paramMap.put("areaId", areaId);
        Area area = areaMapper.getAreaById(areaId);
        /*
        省级管理员查询图片
         */
        pager.setTotalCount(count);
        count = areaMapper.getPartPhotoCountByPro(paramMap);
        if (count > 0) {
            paramMap.put("start", pager.getStart());
            paramMap.put("limit", pager.getLength());
            photoList = areaMapper.getPartAreaPhotoByPro(paramMap);


        }
        return photoList;
    }

    /**
     * 删除图片id数组删除图片
     *
     * @param photoId
     * @return
     */
    @Override
    public int deletePhoto(String[] photoId) {
        List<String> photos = Arrays.asList(photoId);
        List<AreaPhoto> photoList = areaMapper.getPhotoByList(photos);

        String[] fileNames = new String[photoList.size()];

        for (int i = 0; i < photoList.size(); i++) {
            fileNames[i] = photoList.get(i).getUrl().substring(33);
        }
        /**
         * 删除文件
         */
        int result = qiNiuPhotoUploadUtil.deletePhoto(fileNames);
        if (result == photoId.length) {
            int count = areaMapper.deletePhotoByList(photos);
            if (result == count) {
                return count;
            }
        }
        return 0;
    }

    /**
     * 通过id得到area
     *
     * @param id
     * @return
     */
    @Override
    public Area getAreaById(String id) {
        String areaId = getAreaId(id);
        return areaMapper.getAreaById(areaId);
    }
}
