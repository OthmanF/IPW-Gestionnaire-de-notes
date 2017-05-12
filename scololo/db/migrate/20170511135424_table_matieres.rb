class TableMatieres < ActiveRecord::Migration[5.0]
  def change
  	create_table :matieres
  	add_column :matieres, :titre, :string 
  	add_column :matieres, :debut, :datetime
  	add_column :matieres, :fin, :datetime
  	add_column :matieres, :enseignant_id, :integer  #on suppose qu'une matière est prise par un seul enseigant 
  end
end
