package com.nona.hotel.angularhotel.util;

import com.nona.hotel.angularhotel.pojo.Room;

import java.util.List;

/**
 * com.nona.hotel.angularhotel.util
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 19
 * @time: 2016/10/19
 */
public class DataTablesResult {
    private int draw;
    private int recordsTotal;
    private int recordsFiltered;
    private List<Room> data;

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

    public List<Room> getData() {
        return data;
    }

    public void setData(List<Room> data) {
        this.data = data;
    }
}
