class SimditorImageController < ApplicationController
  
  before_action :set_pasted_pic

  def upload
    simditorimg = SimditorImage.new
    simditorimg.image = params['upload_file']
    if simditorimg.save!
      render text: {
        success: true,
        file_path: simditorimg.image.url
      }.to_json
    else
      render text: {
        success: false,
        msg: 'Uploading Error..'
      }
    end
  end

  private

    def set_pasted_pic
      binding.pry
      image_type = params['upload_file'].content_type.match(/image\/(\w*)/)[1]
      params['upload_file'].original_filename = Time.now.to_s + rand(1000).to_s if params['upload_file'].original_filename == 'blob'
      params['upload_file'].original_filename += ".#{image_type}"
    end
end
