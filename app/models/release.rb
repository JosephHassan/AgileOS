class Release < ActiveRecord::Base
  belongs_to  :Product
  has_many    :sprints
  
  RELEASE_STATUS = ["In planning", "In Porgress", "Released"]
end
