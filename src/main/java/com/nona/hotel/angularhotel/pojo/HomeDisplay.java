package com.nona.hotel.angularhotel.pojo;

/**
 * com.nona.hotel.angularhotel.pojo
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 26
 * @time: 2016/10/26
 */
public class HomeDisplay {
    private int owners; //房主数量
    private int tenants;//房客数量
    private int houses; //房间数量
    private int volumes;//成交量

    public int getOwners() {
        return owners;
    }

    public void setOwners(int owners) {
        this.owners = owners;
    }

    public int getTenants() {
        return tenants;
    }

    public void setTenants(int tenants) {
        this.tenants = tenants;
    }

    public int getHouses() {
        return houses;
    }

    public void setHouses(int houses) {
        this.houses = houses;
    }

    public int getVolumes() {
        return volumes;
    }

    public void setVolumes(int volumes) {
        this.volumes = volumes;
    }

    @Override
    public String toString() {
        return "HomeDisplay{" +
                "owners=" + owners +
                ", tenants=" + tenants +
                ", houses=" + houses +
                ", volumes=" + volumes +
                '}';
    }
}
