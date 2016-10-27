package com.hotel.service;

import com.hotel.pojo.Area;
import com.hotel.pojo.AreaPhoto;
import com.hotel.util.Pager;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import java.util.HashMap;
import java.util.List;

/**
 * com.hotel.service
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 18
 * @time: 2016/10/18
 */
public interface AreaService {

    int uploadPhoto(CommonsMultipartFile file, AreaPhoto areaPhoto);

    String getAreaId(String userId);

    List<Area> getAllProvinces();

    Area getProvince(HashMap<String, Object> paramMap);

    List<Area> getSonArea(Area area);

    Area getParentArea(String parentId);

    List<AreaPhoto> getAllAreaPhotoList(Pager<AreaPhoto> pager, HashMap<String, Object> paramMap);

    List<AreaPhoto> getPartAreaPhotoList(Pager<AreaPhoto> pager, HashMap<String, Object> paramMap);

    int deletePhoto(String[] photoId);

    Area getAreaById(String id);
}
