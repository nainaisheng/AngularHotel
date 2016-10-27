package com.hotel.pojo;

import org.apache.log4j.Logger;

/**
 * com.hotel.pojo
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 17
 * @time: 2016/10/17
 */
public class Result {

    private static final Logger logger = Logger.getLogger(Result.class);
    // 操作结果
    private String resultCode;

    // 错误信息
    private String errorInfo;

    // 附属对象
    private Object object;


    public Result(String resultCode, String errorInfo) {
        super();
        this.resultCode = resultCode;
        this.errorInfo = errorInfo;
    }

    public Result(String resultCode, String errorInfo, Object object) {
        super();
        this.resultCode = resultCode;
        this.errorInfo = errorInfo;
        this.object = object;
    }

    public String getResultCode() {
        return resultCode;
    }

    public void setResultCode(String resultCode) {
        this.resultCode = resultCode;
    }

    public String getErrorInfo() {
        return errorInfo;
    }

    public void setErrorInfo(String errorInfo) {
        this.errorInfo = errorInfo;
    }

    public Object getObject() {
        return object;
    }

    public void setObject(Object object) {
        this.object = object;
    }
}
