require_relative '../src/terminal.rb'
require_relative '../src/family.rb'

class Main
  attr_accessor :family, :terminal

  def initialize
    @family = Family.new
    @terminal = Terminal.new
  end

  def run
    show_welcome_screen

    user_input = @terminal.get_user_input

    case user_input
    when "1"
      name = @terminal.get_user_input
      @family.add name
    when "2"
      @terminal.print("Please enter as follows:
FATHER
SON
father")
      first_member = @terminal.get_user_input
      second_member = @terminal.get_user_input
      related_as = @terminal.get_user_input



    else
      @terminal.print("Please select a valid option")
    end

    puts @family.members
  end

  def show_welcome_screen
    @terminal.print(
"Welcome to TV Family Tree!
What would you like to do?
1. Add a member
2. Create a relationship
Select an option[1-2]:
")
  end
end

Main.new.run