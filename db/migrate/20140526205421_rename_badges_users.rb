class RenameBadgesUsers < ActiveRecord::Migration
  def change
    rename_table :badges_users, :completed

    add_column :completed, :date_complete, :date
  end
end
