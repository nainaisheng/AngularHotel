package com.hotel.util;

import java.util.UUID;

/**
 * com.hotel.util
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 23
 * @time: 2016/10/23
 */
public class UUIDUtil {

    public static String getUUID(){
        String uuid = UUID.randomUUID().toString().replace("-", "");
        return uuid;
    }
}
