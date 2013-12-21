class Task < ActiveRecord::Base
  belongs_to :story
  belongs_to :user
  
  validates :title, presence: true
  STATUS = ["New", "In Progress", "Done"]
end
