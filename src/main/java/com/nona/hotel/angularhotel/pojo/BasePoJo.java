package com.nona.hotel.angularhotel.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * com.nona.hotel.angularhotel.pojo
 *
 * @desc 实体类的父类实体类的父类
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 17
 * @time: 2016/10/17
 */

public class BasePoJo implements Serializable {

    private String remark;  //注释

    private String creator;     //创建人

    private String createDate;    //创建时间

    private String editor;      //编辑人

    private String editDate;  //编辑时间

    private String checker; //检查人

    private String checkDate; //检查时间

    private String operateDate;   //操作时间

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getCreator() {
        return creator;
    }

    public void setCreator(String creator) {
        this.creator = creator;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public String getEditor() {
        return editor;
    }

    public void setEditor(String editor) {
        this.editor = editor;
    }

    public String getEditDate() {
        return editDate;
    }

    public void setEditDate(String editDate) {
        this.editDate = editDate;
    }

    public String getChecker() {
        return checker;
    }

    public void setChecker(String checker) {
        this.checker = checker;
    }

    public String getCheckDate() {
        return checkDate;
    }

    public void setCheckDate(String checkDate) {
        this.checkDate = checkDate;
    }

    public String getOperateDate() {
        return operateDate;
    }

    public void setOperateDate(String operateDate) {
        this.operateDate = operateDate;
    }

    @Override
    public String toString() {
        return "BasePoJo{" +
                "remark='" + remark + '\'' +
                ", creator='" + creator + '\'' +
                ", createDate='" + createDate + '\'' +
                ", editor='" + editor + '\'' +
                ", editDate='" + editDate + '\'' +
                ", checker='" + checker + '\'' +
                ", checkDate='" + checkDate + '\'' +
                ", operateDate='" + operateDate + '\'' +
                '}';
    }
}
