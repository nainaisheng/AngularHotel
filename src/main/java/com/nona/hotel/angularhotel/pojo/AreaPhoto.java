package com.nona.hotel.angularhotel.pojo;

/**
 * com.nona.hotel.angularhotel.pojo
 *
 * @desc 地区图片实体类
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 18
 * @time: 2016/10/18
 */
public class AreaPhoto extends BasePoJo {

    private String id;  //图片id

    private String url; //图片url

    private String areaId;  //地区ID

    private Area area;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getAreaId() {
        return areaId;
    }

    public void setAreaId(String areaId) {
        this.areaId = areaId;
    }

    public Area getArea() {
        return area;
    }

    public void setArea(Area area) {
        this.area = area;
    }

    @Override
    public String toString() {
        return "AreaPhoto{" +
                "id='" + id + '\'' +
                ", url='" + url + '\'' +
                ", areaId='" + areaId + '\'' +
                ", area=" + area +
                '}';
    }
}
