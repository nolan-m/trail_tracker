class RenameCompleted < ActiveRecord::Migration
  def change
    rename_table :completed, :completeds
  end
end
