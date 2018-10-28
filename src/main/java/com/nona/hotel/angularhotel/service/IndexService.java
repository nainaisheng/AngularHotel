package com.nona.hotel.angularhotel.service;

import com.nona.hotel.angularhotel.pojo.HomeDisplay;

/**
 * com.nona.hotel.angularhotel.service
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 26
 * @time: 2016/10/26
 */
public interface IndexService {
    HomeDisplay loadingAllDate();

    HomeDisplay loadingPartInfo(String id);
}
