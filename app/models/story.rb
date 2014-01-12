class Story < ActiveRecord::Base
  has_many :tasks, dependent: :destroy
  belongs_to :user
  belongs_to :epic
  belongs_to :product
  belongs_to :sprint
  
  validates :title, presence: true
  validates :description, presence: true
  
  STATUS = ["New", "In Progress", "Ready for QA Testing", "Ready for PO Review", "Ready to Deploy", "Deployed"]
  FIBONACCI_SEQUENCE = [1, 2, 3, 5, 8, 13, 21, 34]

  scope :new, -> {where(status: "New")}
  scope :in_progress, -> {where(status: "In Progress")}
  scope :ready_for_qa_testing, -> {where(status: "Ready for QA Testing")}
  scope :ready_for_po_review, -> {where(status: "Ready for PO Review")}
  scope :ready_to_deploy, -> {where(status: "Ready to Deploy")}
  scope :open, -> {where(status: ["In Progress", "Ready for QA Testing", "Ready for PO Review", "Ready to Deploy"])}
end
