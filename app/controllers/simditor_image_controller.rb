class SimditorImageController < ApplicationController

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
end
