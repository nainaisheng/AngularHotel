package com.nona.hotel.angularhotel.util;

import java.util.List;

/**
 * com.nona.hotel.angularhotel.util
 *
 * @desc datatable 响应的工具类
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 18
 * @time: 2016/10/18
 */
public class DataTableResult<T> {

    private int draw;   //页数
    private int recordsTotal; //分页前总数
    private int recordsFiltered; //分页后总数

    private List<T> data ;    //数据集

    public DataTableResult(){

    }

    public DataTableResult(int draw, int recordsTotal, int recordsFiltered, List<T> data) {
        this.draw = draw;
        this.recordsTotal = recordsTotal;
        this.recordsFiltered = recordsFiltered;
        this.data = data;
    }

    public int getDraw() {
        return draw;
    }

    public void setDraw(int draw) {
        this.draw = draw;
    }

    public int getRecordsTotal() {
        return recordsTotal;
    }

    public void setRecordsTotal(int recordsTotal) {
        this.recordsTotal = recordsTotal;
    }

    public int getRecordsFiltered() {
        return recordsFiltered;
    }

    public void setRecordsFiltered(int recordsFiltered) {
        this.recordsFiltered = recordsFiltered;
    }

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }
}
