class AddRequirmentsToBadges < ActiveRecord::Migration
  def change
  	add_column :badges, :requirements, :string
  end
end
