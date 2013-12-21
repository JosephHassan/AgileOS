class Story < ActiveRecord::Base
  has_many :tasks, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  
  STATUS = ["New", "In Progress", "Ready for QA Testing", "Ready for PO Review", "Ready to Deploy", "Deployed"]
end
