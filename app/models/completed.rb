class Completed < ActiveRecord::Base
  belongs_to :user
  belongs_to :badge
  belongs_to :trail
end
