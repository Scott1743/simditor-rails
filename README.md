simditor-rails
===========================



Simditor：
----------------------------------
http://simditor.tower.im/


simditor-rails
---------------------------------

Scott1743/simditor-rails base on [Simditor(v1.0.5)](http://simditor.tower.im/) and [Carrierwave](https://github.com/carrierwaveuploader/carrierwave),Rails(> 3.2.18),
the universal_version is a version that includes features of image uploader, automatic initialization, width preset.

## Usage

#### Use this gem in your Rails app like this:

Add it to Gemfile:

###
    gem 'simditor', github: 'Scott1743/simditor', branch: 'universal_version'
    bundle install

Create the migration file:

###
    rake railties:install:migrations
    rake db:migrate

Require the relevance in 'application.rb':

###
    require 'carrierwave'

Mount this route to Rails routes:

###
    mount Simditor::Engine => '/simditor'

Override the default uploader (optional):

If the name of your uploader is not 'SimditorUploader', the gem will use the default uploader (SimditorDefaultUploader).
 
Of course, you needn't to create any uploader if you just want a demo.

Override the [Carrierwave](https://github.com/carrierwaveuploader/carrierwave) uploader:

###
    rails generate uploader Simditor

    app/uploaders/simditor_uploader.rb >>

    class SimditorUploader < CarrierWave::Uploader::Base
    # Notice the class name
    #...

## An example of initialization

#### Use it with Assets Pipeline:

###
    Js:
    //= require simditor
    //= require simditor/init

    Styles:
    *= require 'simditor'

In your page：

###
    <%= f.text_area :content, simditor: true %>

    or

    <textarea simditor='true'></textarea>


Now, Simditor could be worked.

## About initialization

The initialized width of Simditor is 720px, and you can set the initialized width in this way:

###
    <%= f.text_area :content, simditor: 800 %>
    
    or
    
    <%= f.text_area :content, simditor: '100%' %>

You can initialize [Simditor](http://simditor.tower.im/) without requiring 'simditor/init', then also can initialize it with original way: http://simditor.tower.im/tours/tour-usage.html.

## Notice

1. If you use this gem with Turbolinks, please add the gem [jquery.turbolinks](https://github.com/kossnocorp/jquery.turbolinks)

2. Scott1743/simditor-rails only depends on the [Carrierwave](https://github.com/carrierwaveuploader/carrierwave), if you need more features of the uploader, please refer to documents of [Carrierwave](https://github.com/carrierwaveuploader/carrierwave). 






