class Product < ActiveRecord::Base
  has_many :releases
  has_many :stories
  has_many :epics
  
  validates :title, presence: true
  validates :description, presence: true
end
