class Epic < ActiveRecord::Base
  belongs_to :Product
  has_many :stories
  
end
