class Image < ActiveRecord::Base
  mount_uploader :pic, AttachmentUploader
  belongs_to :shop
  belongs_to :product
end
