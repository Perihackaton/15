class Image < ActiveRecord::Base
  mount_uploader :pic, AttachmentUploader
  belongs_to :user
  belongs_to :product
end
