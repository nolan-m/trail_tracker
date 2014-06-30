class AddTrailIdToCompleteds < ActiveRecord::Migration
  def change
    add_column :completeds, :trail_id, :integer
  end
end
