class SimditorImage < ActiveRecord::Base
  # mount_uploader :image, SimditorQiniuUploader
  mount_uploader :image, SimditorUploader
  validates_presence_of :image
end
