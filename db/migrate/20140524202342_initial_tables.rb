class InitialTables < ActiveRecord::Migration
  def change
  	create_table :trails do |t|
  		t.string :name
  		t.string :length
  		t.string :location
  		t.string :difficulty
  		t.string :description
  	end

  	create_table :badges do |t|
  		t.string :name
  	end

  create_table :badges_users do |t|
	  	t.integer :badge_id
	  	t.integer :user_id
	  end

	  create_table :badges_trails do |t|
	  	t.integer :badge_id
	  	t.integer :trail_id
	  end
	end
end
