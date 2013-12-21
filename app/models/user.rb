class User < ActiveRecord::Base
  has_many :stories
  has_many :tasks
  
  validates :username, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  
  def full_name
    return "#{first_name} #{last_name}"
  end
  
end
