class Seller < User
  has_and_belongs_to_many :achievements
end
