class CreateUsers < ActiveRecord::Migration[5.0]
  def up
    create_table :users do |t|
      t.column "first_name", :string
      t.string "last_name", :limit => 50
      t.string "email", :default => "", :null => false
      t.string "password", :limit => 40
      
      # t.datetime "created_at"
      # t.datetime "updated_at"
      
      t.timestamps
    end
  end

  def down
  	drop_table :users
  end

end
