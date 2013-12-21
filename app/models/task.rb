class Task < ActiveRecord::Base
  belongs_to :story
  
  validates :title, presence: true
  STATUS = ["New", "In Progress", "Done"]
end
