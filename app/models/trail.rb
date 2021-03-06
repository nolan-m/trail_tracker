class Trail < ActiveRecord::Base
	has_and_belongs_to_many :badges, -> { uniq }
	belongs_to :loop
  has_many :completeds, -> { uniq }

	validates_presence_of :name, :distance, :summit, :difficulty, :description
	validates_uniqueness_of :name
end
