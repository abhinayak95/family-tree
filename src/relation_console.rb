require_relative '../src/terminal.rb'
require_relative '../src/family.rb'
require_relative '../src/person.rb'
require_relative '../src/relative.rb'
require_relative '../src/relation_manager.rb'

class RelationConsole
  
  def initialize relation_manager, terminal
      @relation_manager = relation_manager
      @terminal = terminal
  end

  def add_relation
  	print_add_relation_message
  	selected_option = @terminal.get_user_input.to_i
  	show_option selected_option
  end

  private

  def print_add_relation_message 
  	@terminal.print "
  	Select relation type
  	1. Parent
  	2. Child
  	"
  end

  def show_option option
    person1 = get_name_from_terminal "Enter person1 name"
    person2 = get_name_from_terminal "Enter person2 name"
    @relation_manager.add_parent_child person1, person2 if option == 1
    @relation_manager.add_child_parent person1, person2 if option == 1
  end
 
  def get_name_from_terminal message
	@terminal.print(message)
    name = @terminal.get_user_input
    name
  end

end