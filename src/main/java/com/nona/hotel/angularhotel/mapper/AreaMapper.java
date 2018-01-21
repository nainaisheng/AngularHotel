package com.nona.hotel.angularhotel.mapper;

import com.nona.hotel.angularhotel.pojo.Area;
import com.nona.hotel.angularhotel.pojo.AreaPhoto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

/**
 * com.nona.hotel.angularhotel.mapper
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 18
 * @time: 2016/10/18
 */
@Mapper
public interface AreaMapper {

    String getAreaId(String userId);

    List<Area> getAllProvinces();

    Area getProvinces(Map<String, Object> paramMap);

    Area getAreaById(String areaId);

    Area getParentArea(String parentId);

    List<Area> getAreaByParentId(Area area);

    int insertAreaPhoto(AreaPhoto areaPhoto);

    int getAllAreaPhotoCount();

    List<AreaPhoto> getAllAreaPhoto(Map<String, Object> paramMap);

    int getPartPhotoCount(Map<String, Object> paramMap);

    List<AreaPhoto> getPartAreaPhoto(Map<String, Object> paramMap);

    int getPartPhotoCountByPro(Map<String, Object> paramMap);

    List<AreaPhoto> getPartAreaPhotoByPro(Map<String, Object> paramMap);


    List<AreaPhoto> getPhotoByList(List<String> photos);

    int deletePhotoByList(List<String> photos);

}
