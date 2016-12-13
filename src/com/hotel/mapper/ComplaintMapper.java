package com.hotel.mapper;

import com.hotel.pojo.Complaint;

import java.util.HashMap;
import java.util.List;

/**
 * com.hotel.mapper
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 11
 * @day: 22
 * @time: 2016/11/22
 */
public interface ComplaintMapper {
    int getSolvedComplaintCount(HashMap<String, Object> paramMap);

    List<Complaint> getSolvedComplaint(HashMap<String, Object> paramMap);

    int getPartSolvedComplaintCount(HashMap<String, Object> paramMap);

    List<Complaint> getPartSolvedComplaint(HashMap<String, Object> paramMap);

    Complaint getComplaintById(String id);

    int updateComplaintState(Complaint complaint);
}
