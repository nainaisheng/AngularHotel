package com.nona.hotel.angularhotel.service.impl;

import com.nona.hotel.angularhotel.mapper.AreaMapper;
import com.nona.hotel.angularhotel.mapper.ComplaintMapper;
import com.nona.hotel.angularhotel.pojo.Complaint;
import com.nona.hotel.angularhotel.service.ComplaintService;
import com.nona.hotel.angularhotel.util.Pager;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * com.nona.hotel.angularhotel.service.impl
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 11
 * @day: 22
 * @time: 2016/11/22
 */
@Service
public class ComplaintServiceImpl implements ComplaintService {
    @Resource
    private ComplaintMapper complaintMapper;
    @Resource
    private AreaMapper areaMapper;
    /**
     * 超级管理员分页获取所有已经处理的投诉列表
     * @param pager
     * @param paramMap
     * @return
     */
    @Override
    public List<Complaint> getSolvedComplaint(Pager<Complaint> pager, Map<String, Object> paramMap) {
        List<Complaint> complaintList= null;
        int count = complaintMapper.getSolvedComplaintCount(paramMap);
        pager.setTotalCount(count);
        if (count>0){
            paramMap.put("start",pager.getStart());
            paramMap.put("limit",pager.getLength());
            complaintList = complaintMapper.getSolvedComplaint(paramMap);
        }
        return complaintList;
    }

    /**
     * 区域管理员分页获取当前地区的所有已经处理的投诉列表信息
     * @param pager
     * @param paramMap
     * @return
     */
    @Override
    public List<Complaint> getPartSolvedComplaint(Pager<Complaint> pager, Map<String, Object> paramMap) {
        List<Complaint> complaintList= null;
        String areaId = areaMapper.getAreaId((String) paramMap.get("userId"));
        paramMap.put("areaId",areaId);
        int count = complaintMapper.getPartSolvedComplaintCount(paramMap);
        pager.setTotalCount(count);
        if (count>0){
            paramMap.put("start",pager.getStart());
            paramMap.put("limit",pager.getLength());
            complaintList = complaintMapper.getPartSolvedComplaint(paramMap);
        }
        return complaintList;
    }

    @Override
    public List<Complaint> getHandingComplaint(Pager<Complaint> pager, Map<String, Object> paramMap) {
        return getSolvedComplaint(pager, paramMap);
    }

    @Override
    public List<Complaint> getPartHandingComplaint(Pager<Complaint> pager, Map<String, Object> paramMap) {
        return getPartSolvedComplaint(pager, paramMap);
    }

    @Override
    public Complaint getComplaintById(String id) {

        return  complaintMapper.getComplaintById(id);
    }

    @Override
    public boolean editHandingById(Complaint complaint) {
        int result = complaintMapper.updateComplaintState(complaint);
        return result == 1;
    }
}
