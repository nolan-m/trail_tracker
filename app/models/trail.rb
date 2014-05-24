class Trail < ActiveRecord::Base
	has_and_belongs_to_many :badges

	validates_presence_of :name, :length, :difficulty, :description

end
