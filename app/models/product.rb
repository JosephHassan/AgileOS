class Product < ActiveRecord::Base
  has_many :releases
  
  validates :title, presence: true
  validates :description, presence: true
end
