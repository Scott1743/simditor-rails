simditor-rails
===========================



Simditor官方：
----------------------------------
http://simditor.tower.im/


simditor-rails
---------------------------------

Scott1743/simditor-rails基于[Simditor（v1.0.5）](http://simditor.tower.im/)和[Carrierwave](https://github.com/carrierwaveuploader/carrierwave)，Rails（> 3.2.18）
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

在Rails项目routes中引入

###
    mount Simditor::Engine => '/simditor'

自定义SimditorUploader（可选）

uploader写法法参照[Carrierwave](https://github.com/carrierwaveuploader/carrierwave)，请务必使用类名SimditorUploader

不创建该uploader或者类名不匹配，将使用默认uploader（SimditorDefaultUploader）

###
    rails generate uploader Simditor

    app/uploaders/simditor_uploader.rb >>

    class SimditorUploader < CarrierWave::Uploader::Base
    #注意uploader类名
    #...


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

## 初始化说明

初始化的simditor宽度为720px，可以这样初始化来控制初始宽度，例如设宽为800px

###
    <%= f.text_area :content, simditor: 800 %>

也可以不通过引用simditor/init的方式来初始化[Simditor](http://simditor.tower.im/)

使用官方的初始化：http://simditor.tower.im/tours/tour-usage.html

## 注意

1.如果你的demo使用turbolinks，请添加jquery.turbolinks解决刷新加载问题。

2.Scott1743/simditor-rails只依赖carrierwave，uploader中如需要使用更多功能，请安其官方文档引入所需库






