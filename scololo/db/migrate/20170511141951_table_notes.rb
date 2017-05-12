class TableNotes < ActiveRecord::Migration[5.0]
  def change
  	create_table :notes
  	add_column :notes, :valeur, :integer 
  	add_column :notes, :etudiant_id, :integer
  	add_column :notes, :epreuve_id, :integer
  end
end
