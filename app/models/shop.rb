class Shop < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  acts_as_commentable
  has_and_belongs_to_many :achievements
  enum role: {farmer: 0, admin: 1}
  has_many :orders
end
