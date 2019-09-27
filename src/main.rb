require_relative '../src/terminal.rb'
require_relative '../src/family.rb'
require_relative '../src/person.rb'
require_relative '../src/relative.rb'
require_relative '../src/relation_manager.rb'
require_relative '../src/relation_console.rb'
require_relative '../src/query.rb'
require_relative '../src/siblings_query.rb'
require_relative '../src/all_daughter_query.rb'

class Main
  attr_accessor :family, :terminal

  def initialize
    @continue = true
    @terminal = Terminal.new
    @family = Family.new
    @relation_manager = RelationManager.new @family
    @relation_console = RelationConsole.new @relation_manager, @terminal
    @family.prefill
    @relation_manager.prefill
    puts @family.members
  end

  def continue?
    @continue
  end

  def run
    while continue?
      show_options
      option = @terminal.get_user_input.to_i
      select_option option
    end
  end

  def show_options
    @terminal.print("
      Select an option:
      1. Add all members
      2. Add a person
      3. Add a relationship
      4. Find all siblings
      5. Get all daughters
      6. Quit
      ")
  end

  def add_relationship
    @relation_console.add_relation
  end

  def find_all_siblings
    @terminal.print "Enter a name to find siblings"
    name = @terminal.get_user_input
    query = SiblingQuery.new @family
    puts query.execute name
  end

  def find_all_daughters
    @terminal.print "Enter a name to find daughters"
    name = @terminal.get_user_input
    query = AllDaughterQuery.new @family
    puts query.execute name
  end

  def select_option option
    @continue = false if option == 6
    find_all_daughters if option == 5
    find_all_siblings if option == 4
    add_relationship if option == 3
    add_person if option == 2
    add_all_members if option == 1
  end

  def add_all_members
    @terminal.print("How many members does the family have?")
    count = @terminal.get_user_input.to_i
    count.times do |i|
      name, gender = @terminal.get_user_input.split(' ')
      person_added = @family.add_person(name, gender)
      @terminal.print("Invalid Input") unless person_added
    end
  end

  def add_person
    @terminal.print("Enter name and gender seperated by space i.e Manish male")
    person_details = @terminal.get_user_input.downcase.split(" ")
    @family.add_person person_details[0], person_details[1]
  end

end

Main.new.run