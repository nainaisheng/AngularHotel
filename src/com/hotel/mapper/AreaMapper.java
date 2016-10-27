package com.hotel.mapper;

import com.hotel.pojo.Area;
import com.hotel.pojo.AreaArticle;
import com.hotel.pojo.AreaPhoto;

import java.util.HashMap;
import java.util.List;

/**
 * com.hotel.mapper
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 18
 * @time: 2016/10/18
 */
public interface AreaMapper {

    String getAreaId(String userId);

    List<Area> getAllProvinces();

    Area getProvinces(HashMap<String, Object> paramMap);

    Area getAreaById(String areaId);

    Area getParentArea(String parentId);

    List<Area> getAreaByParentId(Area area);

    int insertAreaPhoto(AreaPhoto areaPhoto);

    int getAllAreaPhotoCount();

    List<AreaPhoto> getAllAreaPhoto(HashMap<String, Object> paramMap);

    int getPartPhotoCount(HashMap<String, Object> paramMap);

    List<AreaPhoto> getPartAreaPhoto(HashMap<String, Object> paramMap);

    int getPartPhotoCountByPro(HashMap<String, Object> paramMap);

    List<AreaPhoto> getPartAreaPhotoByPro(HashMap<String, Object> paramMap);


    List<AreaPhoto> getPhotoByList(List<String> photos);

    int deletePhotoByList(List<String> photos);

}
