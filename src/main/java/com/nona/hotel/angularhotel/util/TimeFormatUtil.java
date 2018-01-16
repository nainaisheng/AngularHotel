package com.nona.hotel.angularhotel.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * com.nona.hotel.angularhotel.util
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 21
 * @time: 2016/10/21
 */
public class TimeFormatUtil {

    public static String formatTime(){
        String format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        return format;
    }

    public static String timeFormat(String time){
        return time.substring(0,19);
    }
}
