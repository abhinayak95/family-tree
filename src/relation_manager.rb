
require_relative '../src/parent.rb'
require_relative '../src/child.rb'

class RelationManager

  def initialize(terminal, family)
      @terminal = terminal
      @family = family
  end

  def add_relation
  	print_add_relation_message
  	selected_option = @terminal.get_user_input.to_i
  	show_option selected_option
  end

  def add_parent_child
      person1 = get_person get_name_from_terminal "Enter person1 name"
      person2 = get_person get_name_from_terminal "Enter person2 name"
      add_parent person1, person2
      add_child person2, person1
  end

  def add_parent person1, person2
  	relative = Parent.new person1, person2
  	person1.add_relative relative
  	@terminal.print "#{person1} is now #{relative} of #{person2}"
  end

  def add_child person1, person2
  	relative = Child.new person1, person2
  	person1.add_relative relative
  	@terminal.print "#{person1} is now #{relative} of #{person2}"
  end

  def get_all_relative_for name, relation
    person = get_person name
    relatives = person.get_relatives
  end

  private

  def show_option option
    add_parent_child if option == 1
  end
 
  def print_add_relation_message 
  	@terminal.print "
  	Select relation type
  	1. Parent
  	2. Child
  	"
  end

  def get_name_from_terminal message
	@terminal.print(message)
    name = @terminal.get_user_input
    name
  end

  def get_person name 
    person = @family.get_member name
    return person
  end

end