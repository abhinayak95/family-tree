require_relative '../src/relative.rb'
require_relative '../src/person.rb'

class AllDaughterQuery < Query

	def execute name
		person = @family.get_member name
		daughters = get_person_with person, "daughter" 
		son = get_person_with person, "son"
		daughters << daughters.map { |daughter| execute daughter.get_person.get_name  }
		daughters << son.map { |son| execute son.get_person.get_name  }
		daughters
	end

	def get_person_with person, relation
		person.get_relatives.select{ |relative| 
			(relative.get_relation == relation) && relative.get_person.get_name != person.get_name
		}
	end

end