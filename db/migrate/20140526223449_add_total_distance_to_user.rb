class AddTotalDistanceToUser < ActiveRecord::Migration
  def change
    add_column :users, :distance_hiked, :decimal
    add_column :users, :highest_summit, :string
    add_column :trails, :summit, :string
  end
end
