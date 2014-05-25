class Badge < ActiveRecord::Base
	has_and_belongs_to_many :trails, -> { uniq }
	has_and_belongs_to_many :users, -> { uniq }

	validates_presence_of :name
	validates_uniqueness_of :name

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
