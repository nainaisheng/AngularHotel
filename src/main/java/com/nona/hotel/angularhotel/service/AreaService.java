package com.nona.hotel.angularhotel.service;

import com.nona.hotel.angularhotel.pojo.Area;
import com.nona.hotel.angularhotel.pojo.AreaPhoto;
import com.nona.hotel.angularhotel.util.Pager;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import java.util.List;
import java.util.Map;

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

    int uploadPhoto(MultipartFile file, AreaPhoto areaPhoto);

    String getAreaId(String userId);

    List<Area> getAllProvinces();

    Area getProvince(Map<String, Object> paramMap);

    List<Area> getSonArea(Area area);

    Area getParentArea(String parentId);

    List<AreaPhoto> getAllAreaPhotoList(Pager<AreaPhoto> pager, Map<String, Object> paramMap);

    List<AreaPhoto> getPartAreaPhotoList(Pager<AreaPhoto> pager, Map<String, Object> paramMap);

    int deletePhoto(String[] photoId);

    Area getAreaById(String id);
}
