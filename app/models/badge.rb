class Badge < ActiveRecord::Base
	has_and_belongs_to_many :trails, :uniq => true
	has_and_belongs_to_many :users, :uniq => true

	validates_presence_of :name
end
