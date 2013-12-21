class Task < ActiveRecord::Base
  validates :title, presence: true
  STATUS = ["New", "In Progress", "Done"]
end
