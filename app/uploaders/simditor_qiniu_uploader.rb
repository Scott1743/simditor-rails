class SimditorQiniuUploader < CarrierWave::Uploader::Base
  include CarrierwaveQiniu

  # Choose what kind of storage to use for this uploader:
  storage :qiniu

  self.qiniu_bucket = ENV["QINIU_IMG_BUCKET"]
  self.qiniu_bucket_domain = ENV["QINIU_IMG_BUCKET_DOMAIN"]

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "/youyu_simditor"
  end

  def old_store_dir
    "#{model.class.to_s.underscore}/#{mounted_as}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end
  def extension_white_list
    %w(gif jpg png jpeg)
  end

  def origin_file_name
    original_filename
  end

  def file_name
    if original_filename
      @name ||= SecureRandom.uuid.gsub("-","")
      "#{@name}#{File.extname(original_filename).downcase}"
    end
  end

end