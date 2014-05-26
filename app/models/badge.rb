class Badge < ActiveRecord::Base
	has_and_belongs_to_many :trails, -> { uniq }
	has_many :users, through: :completeds
  has_many :completeds, -> { uniq }

	validates_presence_of :name
	validates_uniqueness_of :name

	has_attached_file :image, styles: { thumb: "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  # validates_attachment_presence :image
end
