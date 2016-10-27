package com.hotel.util;

import com.qiniu.common.QiniuException;
import com.qiniu.http.Response;
import com.qiniu.storage.BucketManager;
import com.qiniu.storage.UploadManager;
import com.qiniu.util.Auth;

import java.io.File;
import java.util.Calendar;
import java.util.Random;

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
public class PhotoUploadUtil {
    //设置好账号的ACCESS_KEY和SECRET_KEY
    private static String ACCESS_KEY = "canKgBzqR_AN_EviuOuWYUT4Vko3gi5dTNZFiQ4C";
    private static String SECRET_KEY = "feAWGHn_UmhGU2ckkHd9F2q2qFpC7lPqlemvEOCH";
    //要上传的空间
    private static String bucketname = "eumji025";
    public static String basePath = "http://of8rkrh1w.bkt.clouddn.com/";

    //上传到七牛后保存的文件名
    public static String getFilePath(String fileName){
        Calendar instance = Calendar.getInstance();
        int year = instance.get(Calendar.YEAR);
        int month = instance.get(Calendar.MONTH);
        int day = instance.get(Calendar.DATE);
        return year+"/"+month+"/"+day+"/"+fileName;
    }

    public static Auth getAuth(){
        return Auth.create(ACCESS_KEY,SECRET_KEY);
    }

    //简单上传，使用默认策略，只需要设置上传的空间名就可以了
    public static String getUpToken(){
        Auth auth = Auth.create(ACCESS_KEY, SECRET_KEY);
        return auth.uploadToken(bucketname);
    }

    /**
     * 长传图片
     * @param file 图片文件
     * @param filename 图片名
     * @return
     */
    public static int uploadPhoto(File file,String filename){
        try {
            Response response = new UploadManager().put(file, getFilePath(filename), getUpToken());
            System.out.println(response.toString());
            if (response.isOK()){
                return 1;
            }
        } catch (QiniuException e) {
            e.printStackTrace();
            return 0;
        }
        return 0;
    }

    public static int deletePhoto(String[] fileNames){
        int result = 0;
        BucketManager bucketManager = new BucketManager(getAuth());
        for (String filename : fileNames) {
            try {
                    bucketManager.delete(bucketname,filename);
                result++;
            } catch (QiniuException e) {
                e.printStackTrace();
                return 0;
            }
        }
        return result;
    }




}
