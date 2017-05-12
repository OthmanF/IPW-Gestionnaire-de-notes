class TableEpreuves < ActiveRecord::Migration[5.0]
  def change
   	create_table :epreuves
  	add_column :epreuves, :titre, :string 
  	add_column :epreuves, :date, :datetime
  	add_column :epreuves, :enseignant_id, :integer
  	add_column :epreuves, :matiere_id, :integer
  	
  end
end
