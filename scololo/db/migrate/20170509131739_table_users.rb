class TableUsers < ActiveRecord::Migration[5.0]
  def change
  	create_table :users
  	add_column :users, :familyName, :string 
  	add_column :users, :firstName, :string
  	add_column :users, :password, :string
  	add_column :users, :email, :string   

  end
end
