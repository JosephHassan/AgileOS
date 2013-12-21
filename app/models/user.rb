class User < ActiveRecord::Base
  has_many :stories
  has_many :tasks
  
  validates :username, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end
