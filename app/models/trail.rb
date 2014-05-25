class Trail < ActiveRecord::Base
	has_and_belongs_to_many :badges, -> { uniq }
	belongs_to :loop

	validates_presence_of :name, :length, :difficulty, :description
	validates_uniqueness_of :name
end
