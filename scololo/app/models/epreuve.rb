class Epreuve < ActiveRecord::Base
	belongs_to :matiere
	belongs_to :enseignant 
end	