class Product < ActiveRecord::Base
  has_many :releases, dependent: :destroy
  has_many :stories, dependent: :destroy
  has_many :epics, dependent: :destroy
  
  validates :title, presence: true
  validates :description, presence: true
end
