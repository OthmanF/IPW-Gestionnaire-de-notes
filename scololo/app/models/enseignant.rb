class Enseignant < User
	has_many :epreuves
	has_many :matieres
end	