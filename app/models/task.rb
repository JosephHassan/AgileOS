class Task < ActiveRecord::Base
  belongs_to :story, counter_cache: true
  belongs_to :user
  
  validates :title, presence: true
  STATUS = ["New", "In Progress", "Done"]
end
