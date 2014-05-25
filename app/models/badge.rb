class Badge < ActiveRecord::Base
	has_and_belongs_to_many :trails, -> { uniq }
	has_and_belongs_to_many :users, -> { uniq }

	validates_presence_of :name
	validates_uniqueness_of :name
end
