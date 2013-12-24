class Release < ActiveRecord::Base
  belongs_to :Product
  
  RELEASE_STATUS = ["In planning", "In Porgress", "Released"]
end
