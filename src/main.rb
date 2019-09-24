require_relative '../src/terminal.rb'
require_relative '../src/family.rb'
require_relative '../src/person.rb'
require_relative '../src/relative.rb'

class Main
  attr_accessor :family, :terminal

  def initialize
    @family = Family.new
    @terminal = Terminal.new
  end

  def run
    while true
      show_options
      option = @terminal.get_user_input
      select_option option
    end
  end

  def show_options
    @terminal.print("
      Select an option:
      1. Add a person
      2. Add a relationship
      ")
  end

  def select_option option
    add_relation unless option == "1"
    add_person unless option == "2"
  end

  def add_person
    @terminal.print("Enter person name")
    name = @terminal.get_user_input
    add_to_family name
  end

  def add_relation
    @terminal.print("Enter person1 name")
    name1 = @terminal.get_user_input
    @terminal.print("Enter person2 name")
    name2 = @terminal.get_user_input
    @terminal.print("Enter relation")
    relation = @terminal.get_user_input
    add_relation_to name1, name2, relation
  end

  def add_to_family person 
    @family.add Person.new person, "Male"
    @terminal.print("#{person} added to family")
  end

  def add_relation_to person1_name, person2_name, relation
    person1 = get_person person1_name
    person2 = get_person person2_name
    relative = Relative.new relation, person2
    person1.add_relative relative
    @terminal.print("#{person1_name} is now #{relation} of #{person2_name}")
  end

  def get_person name 
    person = @family.get_member name
    return person
  end

end

Main.new.run