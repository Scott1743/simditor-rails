class SimditorImageController < ApplicationController

  before_action :set_simditor_iamge, only: :destroy

  layout false

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

  def index
    @simditorimgs = SimditorImage.all
  end

  def destroy
    @simditorimg.remove_image!
    @simditorimg.destroy
    redirect_to action: :index
  end

  private

    def set_simditor_iamge
      @simditorimg = SimditorImage.find simditor_iamge_params[:id]
    end

    def simditor_iamge_params
      params.require(:simditor_image).permit(:id)
    end
end
