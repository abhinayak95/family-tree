require_relative '../src/terminal.rb'
require_relative '../src/family.rb'
require_relative '../src/person.rb'

class Main
  attr_accessor :family, :terminal

  def initialize
    @family = Family.new
    @terminal = Terminal.new
  end

  def run
    @terminal.print("Enter your name: ")
    root_person_name = @terminal.get_user_input
    person = Person.new(root_person_name)
    family.add person
    @terminal.print "Added person #{family.get_root_member}"
  end
end

Main.new.run