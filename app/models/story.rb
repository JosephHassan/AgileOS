class Story < ActiveRecord::Base
  has_many :tasks, dependent: :destroy
  belongs_to :user
  belongs_to :epic
  belongs_to :product
  
  validates :title, presence: true
  validates :description, presence: true
  
  STATUS = ["New", "In Progress", "Ready for QA Testing", "Ready for PO Review", "Ready to Deploy", "Deployed"]
  FIBONACCI_SEQUENCE = [1, 2, 3, 5, 8, 13, 21, 34]
end
