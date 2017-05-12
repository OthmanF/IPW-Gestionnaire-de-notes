class Etudiant < User
	has_many :matieres

	has_many :notes
end	