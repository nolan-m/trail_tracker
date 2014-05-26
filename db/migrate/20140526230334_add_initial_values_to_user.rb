class AddInitialValuesToUser < ActiveRecord::Migration
  def change
    change_column :users, :highest_summit, :string, :default => "0"
    change_column :users, :distance_hiked, :decimal, :default => 0.0
    rename_column :trails, :length, :distance
  end
end
