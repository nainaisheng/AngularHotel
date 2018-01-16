# AngularHotel

## 说明
鉴于有部分朋友star和fork这个项目,
之前帮朋友写的时候没有使用maven,趁此次计划重构了一下,已于大家的构建和部署


##内容

本系统作为蚌壳民宿平台项目的web资源管理端，使用ng开发的单页应用系统
主要内容是：

 * 数据统计（echarts图视化）
 * 管理用户信息
 * 管理房间信息
 * 管理投诉信息
 * 管理订单信息
 * 管理地区信息
 * 系统管理（权限管理）
    
    
#技术栈

1.后端
* 核心框架：Spring Framework 4.2.5
* 视图框架：Spring MVC 4.2.5
* 持久层框架：MyBatis 3.2

2.前端
* AngularJS 1.3
* BootStrap 3


#工具

1.前端
* webstorm2016.2
* http-server

2.后端
* Intellij idea2016.2
* tomcat7.0.67
* jdk1.8
* mysql5.6

## 项目使用
1.导入sql,更改application.yml的配置
2.导入项目到IDE或者直接 mvn package
3.IDE运行项目或者直接java -jar target/angular-hotel-0.0.1-SNAPSHOT.jar

不懂的朋友看一下网上的spring boot教程.

## 计划

2018年1月21日 - 计划改为maven项目

## 进展

2018年1月16日 -> 完成初步的改造,使用全新的spring boot







