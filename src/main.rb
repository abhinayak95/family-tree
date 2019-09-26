require_relative '../src/terminal.rb'
require_relative '../src/family.rb'
require_relative '../src/person.rb'
require_relative '../src/relative.rb'
require_relative '../src/relation_manager.rb'

class Main
  attr_accessor :family, :terminal

  def initialize
    @terminal = Terminal.new
    @family = Family.new @terminal
  end

  def run
    while true
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
      ")
  end

  def select_option option
    @family.add_relation if option == 3
    @family.add_person if option == 2
    @family.add_all_members if option == 1
  end

end

Main.new.run