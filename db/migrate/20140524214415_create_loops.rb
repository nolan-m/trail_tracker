class CreateLoops < ActiveRecord::Migration
  def change
    create_table :loops do |t|
    	t.string :name
    end
    add_column :trails, :loop_id, :integer
  end
end
