package com.hotel.controller;

import com.hotel.pojo.Complaint;
import com.hotel.pojo.Order;
import com.hotel.pojo.Result;
import com.hotel.pojo.User;
import com.hotel.service.ComplaintService;
import com.hotel.util.Constant;
import com.hotel.util.DataTableResult;
import com.hotel.util.Pager;
import com.hotel.util.TimeFormatUtil;
import org.springframework.beans.factory.parsing.SourceExtractor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;

/**
 * com.hotel.controller
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 11
 * @day: 22
 * @time: 2016/11/22
 */
@Controller
public class ComplaintController {
    @Resource
    private ComplaintService complaintService;

    /**
     * 分页查询已处理的投诉
     * @param pager
     * @param session
     * @return
     */
    @RequestMapping("/complaints/solved")
    @ResponseBody
    public DataTableResult<Complaint> loadSolvedComplaint(@RequestBody Pager<Complaint> pager, HttpSession session){

        HashMap<String, Object> paramMap = new HashMap<String, Object>();
        paramMap.put("complaintStateId",1);

        return getComplaint(pager,session,paramMap);
    }

    /**
     * 分页获取受理中的投诉列表
     * @param pager
     * @param session
     * @return
     */
    @RequestMapping("/complaints/handing")
    @ResponseBody
    public DataTableResult<Complaint> loadHandingComplaint(@RequestBody Pager<Complaint> pager,HttpSession session){
        HashMap<String, Object> paramMap = new HashMap<String, Object>();
        paramMap.put("complaintStateId",3);

        return getComplaint(pager,session,paramMap);
    }

    @RequestMapping("/complaints/suspending")
    @ResponseBody
    public DataTableResult<Complaint> loadSuspendingComlaint(@RequestBody Pager<Complaint> pager ,HttpSession session){
        HashMap<String, Object> paramMap = new HashMap<String, Object>();
        paramMap.put("complaintStateId",2);
        return getComplaint(pager,session,paramMap);

    }

    @RequestMapping("/complaints/{id}")
    @ResponseBody
    public Result loadComlaintInfo(@PathVariable String id){
        Complaint complaint = complaintService.getComplaintById(id);
        if (complaint!=null){
            return new Result("success",Constant.DEAL_SUCCESS,complaint);
        }
        return new Result("fail",Constant.DEAL_FAIL);
    }

    /**
     * 将未处理的投诉变成投诉中
     * @param id
     * @param session
     * @return
     */
    @RequestMapping("/complaint/editHanding/{id}")
    @ResponseBody
    public Result editHanding(@PathVariable String id,HttpSession session){
        User user = (User) session.getAttribute(Constant.USERINFO);
        Complaint complaint = new Complaint();
        complaint.setId(id);
        complaint.setChecker(user.getUserName());
        complaint.setCheckDate(TimeFormatUtil.formatTime());
        complaint.setOperateDate(complaint.getCheckDate());
        complaint.setComplaintStateId(3);
        complaint.setReply("");

        boolean result = complaintService.editHandingById(complaint);
        if (result){
            return new Result("success",Constant.DEAL_SUCCESS);
        }
        return new Result("fail",Constant.DEAL_FAIL);
    }
    @RequestMapping("/complaint/editSolved/{id}")
    @ResponseBody
    public Result editSolved(@PathVariable String id,@RequestBody Complaint complaint,HttpSession session) {
        User user = (User) session.getAttribute(Constant.USERINFO);
        complaint.setId(id);
        complaint.setComplaintStateId(1);
        complaint.setChecker(user.getUserName());
        complaint.setCheckDate(TimeFormatUtil.formatTime());
        complaint.setOperateDate(complaint.getCheckDate());
        boolean result = complaintService.editHandingById(complaint);
        if (result) {
            return new Result("success", Constant.DEAL_SUCCESS);
        }
        return new Result("fail", Constant.DEAL_FAIL);
    }

    public DataTableResult<Complaint> getComplaint(Pager<Complaint> pager,HttpSession session,HashMap<String,Object> paramMap){
        DataTableResult<Complaint> tableResult = new DataTableResult();
        List<Complaint> complaintList =null;
        User user = (User) session.getAttribute(Constant.USERINFO);
        int roleTypeId = user.getUserRoleTypeId();
        if (roleTypeId==3){

            complaintList = complaintService.getHandingComplaint(pager,paramMap);
        }
        else if (roleTypeId == 4) {
            paramMap.put("userId", user.getId());
            complaintList = complaintService.getPartHandingComplaint(pager, paramMap);
        }

        if (complaintList!=null&&complaintList.size()>0){

            for (int i = 0; i < complaintList.size(); i++) {
                complaintList.get(i).setCreateDate(TimeFormatUtil.timeFormat(complaintList.get(i).getCreateDate()));
                if (complaintList.get(i).getComplaintStateId()!=2){
                    complaintList.get(i).setCheckDate(TimeFormatUtil.timeFormat(complaintList.get(i).getCheckDate()));
                }

            }
            tableResult.setData(complaintList);
            tableResult.setDraw(pager.getDraw());
            tableResult.setRecordsTotal(pager.getTotalCount());
            tableResult.setRecordsFiltered(complaintList.size());
        }else {
            tableResult.setData(null);
            tableResult.setDraw(pager.getDraw());
            tableResult.setRecordsTotal(pager.getTotalCount());
            tableResult.setRecordsFiltered(0);
        }
        return tableResult;
    }
}
