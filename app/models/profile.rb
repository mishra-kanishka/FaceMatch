class Profile < ActiveRecord::Base
  attr_accessible :about_me, :age, :name, :image #,:remote_image_url

 mount_uploader :image, ImageUploader
end
