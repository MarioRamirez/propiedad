class RealEstate < ActiveRecord::Base

  belongs_to :user
  
  geocoded_by :address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates
  
  mount_uploader :picture, PictureUploader
end
