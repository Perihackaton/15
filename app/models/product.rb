class Product < ActiveRecord::Base
  acts_as_commentable
  belongs_to :seller
  belongs_to :category
end
