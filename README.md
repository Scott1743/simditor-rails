simditor-rails
===========================



Simditor官方：
----------------------------------
http://simditor.tower.im/


说明
---------------------------------

基于Simditor（v1.0.5）和carrierwave，Rails（> 3.2.18）
通用版是一个含有客户端图片上传功能、自动初始化、预设宽度的版本。

## 配置

在Rails中这样使用simditor-rails:

添加到Gemfile

### 
    gem 'simditor', github: 'Scott1743/simditor', branch: 'universal_version'
    bundle install

拷贝迁移文件

###
    rake railties:install:migrations
    rake db:migrate
  
在application.rb中引入carrierwave

###
    require 'carrierwave'



## 初始化示例

可以在页面中直接引用，推荐使用Assets Pipeline方式:

###
    Js:
    //= require simditor
    //= require simditor/init

    Styles:
    *= require 'simditor'

页面中使用：

###
    <%= f.text_area :content, simditor: true %>
 
    or
  
    <textarea simditor='true'></textarea>
  

Simditor已经可以在页面中使用了

## 另

初始化的simditor宽度为720px，可以这样初始化来控制初始宽度，例如设宽为800px

###  
    <%= f.text_area :content, simditor: 800 %>
  
也可以不通过引用simditor/init的方式来初始化Simditor
请使用官方的初始化方式：http://simditor.tower.im/tours/tour-usage.html
   
   
  


