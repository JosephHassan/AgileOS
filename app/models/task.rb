class Task < ActiveRecord::Base
  belongs_to :story, counter_cache: true
  belongs_to :user
  
  validates :title, presence: true
  STATUS = ["New", "In Progress", "Done"]

  scope :new, -> {where(status: "New")}
  scope :in_progress, -> {where(status: "In Progress")}
  scope :open_tasks, -> {where(status: ["New", "In Progress"])}
  scope :completed, -> {where(status: "Done")}
end
