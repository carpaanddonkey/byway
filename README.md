# byway
顺道儿项目

### 简介
**_顺道儿_**是一个为高校食堂和学生提供线上服务的平台Demo。  
在宿舍的同学可以通过**_顺道儿_**点餐 --> 食堂工作人员收到订单并制作菜品 --> 在食堂就餐的同学可以进行接单并顺道儿配送。
系统通过位置服务推荐附近食堂、通过奖励系统对配送员进行奖励。

### 预览
![](https://github.com/carpaanddonkey/byway/raw/raw_for_byway/raw_imgs/hello.png) 
![](https://github.com/carpaanddonkey/byway/raw/raw_for_byway/raw_imgs/login.png) 
![](https://github.com/carpaanddonkey/byway/raw/raw_for_byway/raw_imgs/register.png) 
![](https://github.com/carpaanddonkey/byway/raw/raw_for_byway/raw_imgs/chome.png) 
![](https://github.com/carpaanddonkey/byway/raw/raw_for_byway/raw_imgs/c_window.png) 
![](https://github.com/carpaanddonkey/byway/raw/raw_for_byway/raw_imgs/c_ordernew.png)
![](https://github.com/carpaanddonkey/byway/raw/raw_for_byway/raw_imgs/o_orderlist.png)  
![](https://github.com/carpaanddonkey/byway/raw/raw_for_byway/raw_imgs/orderstate.png) 

### 如何配置&运行
#### 配置

##### 配置host:
在host文件中添加以下规则：  
```
127.0.0.1   api.byway.net.cn    web.byway.net.cn
```

##### 配置MySQL  
    * 启动MySQL  
    * 新建用户、数据库（如：用户名byway、密码byway，数据库byway）  
    * 将项目中的byway.sql导入mysql中  

##### 启动Redis  
    启动Redis  

##### 配置Django Settings  
修改/serverapi/serverapi/settings.py文件  
    * MySQL Settings:  
        修改为对应之前新建的用户、数据库  
    * TIME_ZONE:  
        项目默认为Asia/Shanghai  
    * Celery:  
        在settings.py文件的最底部可以修改Celery配置   

##### 允许本地跨域请求  
修改serverapi/util/response_util.py:  
response['Access-Control-Allow-Origin']的值改为'null'  

#### 运行
配置完成后，进入项目目录serverapi  
执行python manage.py runserver 0.0.0.0:8000即可运行  
使用PC或者Mac运行网页时，可以调用浏览器的Responsive Design Mode功能，使界面符合移动端的表现  

##### 用户(Customer & Deliver)端  
登陆账号：13301052@bjtu.edu.cn 密码：123    
在浏览器中打开文件serverapi/student-client/WebPage/hellopage.html    
```
# Vegeta @ YHN-MBP in ~/Documents/byway/student-client/WebPage on git:raw_for_byway x [13:24:48]
$ open hellopage.html -a Safari
```    

##### 食堂操作(Operator)端  
登陆账号：canadmin 密码：123    
在浏览器中打开文件serverapi/cafeteria-client/WebPage/hellopage.html  

-
## 后台部分
顺道儿服务端(后台服务接口)

### 运行需要  
1. Django 1.6-1.9
2. Celery
3. MySQL
4. Redis

### 本地运行
1. git clone https://github.com/carpaanddonkey/serverapi.git
2. cd serverapi
3. 确保本地数据库的配置正确(MySQL,数据库名、用户名、密码都是：byway)
4. 执行命令 python manage.py syncdb
5. 运行脚本startserver.sh或执行python manage.py runserver 0.0.0.0:8000(推荐执行startserver.sh)
6. 退出用ctrl+c

### Celery相关
1. 启动Celery worker: python manage.py celery worker --loglevel=info
2. 启动Celery beat(用于定时任务): python manage.py celery beat

### 架构设计、简洁开发流程参见Wiki  
[ServerAPI顺道儿服务架构设计](https://github.com/carpaanddonkey/serverapi/wiki/ServerAPI顺道儿服务架构设计)

@ByWay 
