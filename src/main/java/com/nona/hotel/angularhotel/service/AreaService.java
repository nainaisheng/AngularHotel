package com.nona.hotel.angularhotel.service;

import com.nona.hotel.angularhotel.pojo.Area;
import com.nona.hotel.angularhotel.pojo.AreaPhoto;
import com.nona.hotel.angularhotel.util.Pager;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import java.util.HashMap;
import java.util.List;

/**
 * com.nona.hotel.angularhotel.service
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
