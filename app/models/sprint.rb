class Sprint < ActiveRecord::Base
  belongs_to  :Release
  has_many    :stories
end
