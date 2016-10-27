package com.test.junit;

import com.hotel.mapper.UserMapper;
import com.hotel.pojo.User;
import com.hotel.util.TimeFormatUtil;
import com.sun.org.apache.regexp.internal.RE;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Before;
import org.junit.Test;

import java.io.InputStream;
import java.util.List;
import java.util.Random;
import java.util.UUID;

/**
 * com.test.junit
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 22
 * @time: 2016/10/22
 */
public class Jtest {
    /**
     * 封装session
     */
    public static SqlSession getSession(){

        String resource = "conf.xml";
        InputStream is = Jtest.class.getClassLoader().getResourceAsStream(resource);
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
        // SqlSession session = factory.openSession(true) 自动提交更新
        SqlSession session = factory.openSession(); //默认为手动提交更新
        return session;
    }
    /**
     * 封装statement
     */
    public static String getStatement(String statement){
        return "com.hotel.mapper.UsersMapper."+statement;
    }

    /**
     * 插入一条数据
     */
    @Test
    public void insert(){
        String statement = "com.hotel.mapper.UsersMapper.insert";
        SqlSession session = getSession();

        for (int i = 10; i < 100; i++) {
            User user = new User();
            user.setId(UUID.randomUUID().toString().replaceAll("-", ""));
            user.setUserName("leiyang" + i);
            user.setRealName("小xiao" + i);
            user.setPassword("123");
            user.setTelPhone("135743" + 11113 + i);
            user.setEmail(123415 + i + "@qq.com");
            user.setAddress("湖南张家界");
            user.setSex("女");
            user.setCreator("小xiao" + i);
            user.setCreateDate(TimeFormatUtil.formatTime());
            user.setOperateDate(TimeFormatUtil.formatTime());
            user.setUserStateId(new Random().nextInt(4));
            int result = session.insert(statement,user);
            if (result == 1) {
                session.commit();
                System.out.println("插入成功");
            }

        }
        session.close();

    }


    @Test
    public void insertUserRole(){
        String statement0 = "com.hotel.mapper.UsersMapper.getUser";
        SqlSession session = getSession();
        List<User> userList = session.selectList(statement0);
        String statement = "com.hotel.mapper.UsersMapper.insertUserRole";
        for (User user : userList) {
            user.setUserRoleTypeId(2);
            user.setCreateDate(user.getCreateDate().substring(0,19));
            user.setOperateDate(user.getOperateDate().substring(0,19));
//            System.out.println(user.getId());
//            System.out.println(user.getCreateDate());
            int result = session.insert(statement,user);
            if (result>0){
                session.commit();
                System.out.println("添加");
            }

        }
        session.close();

    }
    @Test
    public void insertAuthorization(){
        String statement0 = "com.hotel.mapper.UsersMapper.getUser";
        SqlSession session = getSession();
        List<User> userList = session.selectList(statement0);
        String statement = "com.hotel.mapper.UsersMapper.insertAuthriazation";
        for (User user : userList) {

            Authorization authorization = new Authorization();
            authorization.setUserRoleId(user.getId());
            authorization.setCreator(user.getCreator());
            authorization.setCreateDate(user.getCreateDate().substring(0,19));
            authorization.setOperateDate(user.getOperateDate().substring(0,19));
            int areaId = 0;
            while (areaId==0){
                areaId = new Random().nextInt(27);
            }
            authorization.setAreaId(String.valueOf(areaId));
            int result = session.insert(statement,authorization);
            if (result>0){
                System.out.println("插入成功");
                session.commit();
            }

        }
        session.close();
    }

}

