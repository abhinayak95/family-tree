require_relative '../src/relative.rb'
require_relative '../src/person.rb'

class SiblingQuery < Query

	def execute name
		person = @family.get_member name
		parent = person.get_relatives.reverse.select{ |member| 
			member.get_relation == "father" || member.get_relation == "mother"
		}.first
		# puts parent.get_person.get_relatives
		siblings = parent.get_person.get_relatives.select{ |relative| 
			(relative.get_relation == "son" || relative.get_relation == "daughter") && relative.get_person.get_name != name
		}
		siblings.map { |sibling| sibling.get_person }
	end

end