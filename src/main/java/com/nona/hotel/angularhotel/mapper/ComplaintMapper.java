package com.nona.hotel.angularhotel.mapper;

import com.nona.hotel.angularhotel.pojo.Complaint;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

/**
 * com.nona.hotel.angularhotel.mapper
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 11
 * @day: 22
 * @time: 2016/11/22
 */
@Mapper
public interface ComplaintMapper {
    int getSolvedComplaintCount(Map<String, Object> paramMap);

    List<Complaint> getSolvedComplaint(Map<String, Object> paramMap);

    int getPartSolvedComplaintCount(Map<String, Object> paramMap);

    List<Complaint> getPartSolvedComplaint(Map<String, Object> paramMap);

    Complaint getComplaintById(String id);

    int updateComplaintState(Complaint complaint);
}
