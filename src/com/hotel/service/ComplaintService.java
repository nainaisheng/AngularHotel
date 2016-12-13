package com.hotel.service;

import com.hotel.pojo.Complaint;
import com.hotel.util.Pager;

import java.util.HashMap;
import java.util.List;

/**
 * com.hotel.service
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 11
 * @day: 22
 * @time: 2016/11/22
 */
public interface ComplaintService {
    List<Complaint> getSolvedComplaint(Pager<Complaint> pager, HashMap<String, Object> paramMap);

    List<Complaint> getPartSolvedComplaint(Pager<Complaint> pager, HashMap<String, Object> paramMap);

    List<Complaint> getHandingComplaint(Pager<Complaint> pager, HashMap<String, Object> paramMap);

    List<Complaint> getPartHandingComplaint(Pager<Complaint> pager, HashMap<String, Object> paramMap);

    Complaint getComplaintById(String id);

    boolean editHandingById(Complaint id);
}
