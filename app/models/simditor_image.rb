require 'carrierwave/orm/activerecord'
class SimditorImage < ActiveRecord::Base
  klass = ''
  begin 
    klass = SimditorUploader.class.to_s
  rescue
    nil
  end
  binding.pry
  if (klass == 'class')
  # if ((Object.defined?(SimditorUploader)) == 'constant')
    mount_uploader :image, SimditorUploader
  else
    mount_uploader :image, SimditorDefaultUploader
  end
  validates_presence_of :image
end
