class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :badges, -> { uniq }, through: :completeds
  has_many :trails, -> { uniq },  through: :completeds
  has_many :completeds, -> { uniq }
end


