class Release < ActiveRecord::Base
  belongs_to  :Product
  has_many    :sprints, dependent: :destroy

  validates :Product, presence: true

  RELEASE_STATUS = ['In planning', 'In Progress', 'Released']

  scope :In_Planning, -> {where(status: 'In planning')}
  scope :In_Progress, -> {where(status: 'In Progress')}
  scope :Released, -> {where(status: 'Released')}
end
