class User < ActiveRecord::Base
  validates :username, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end
