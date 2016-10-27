package com.hotel.pojo;

import java.util.Arrays;

/**
 * com.hotel.pojo
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 26
 * @time: 2016/10/26
 */
public class AreaIdAndId {
    private String[] areasId;
    private String[] ids;

    public String[] getAreasId() {
        return areasId;
    }

    public void setAreasId(String[] areasId) {
        this.areasId = areasId;
    }

    public String[] getIds() {
        return ids;
    }

    public void setIds(String[] ids) {
        this.ids = ids;
    }

    @Override
    public String toString() {
        return "AreaIdAndId{" +
                "areasId=" + Arrays.toString(areasId) +
                ", ids=" + Arrays.toString(ids) +
                '}';
    }
}
