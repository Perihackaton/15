class Order < ActiveRecord::Base
  belongs_to :buyer
  belongs_to :seller
  has_many :order_products
end
