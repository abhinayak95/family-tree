require_relative '../src/relative.rb'
require_relative '../src/person.rb'

class Family

  def initialize terminal
  	@terminal = terminal
  	@relation_manager = RelationManager.new @terminal, self
    @members = []
  end

  def get_member(name)
    person = @members.select { |member| member.get_name == name }.first
  end

  def add_all_members
    @terminal.print("How many members does the family have?")
    count = @terminal.get_user_input.to_i
    for i in 1..count do 
      add_person
    end
  end

  def add_person
    @terminal.print("Enter name and gender seperated by space i.e Manish male")
    person_details = @terminal.get_user_input.split(" ")
    validate_person_input person_details
  end

  def add_relation
  	@relation_manager.add_relation
  end

  private

  def validate_person_input person_details
  	name = person_details[0]
    gender = person_details[1]
    if gender == nil 
      @terminal.print "invalid gender please try again"
      add_person
      return
    else
      add_to_family name, gender
    end
  end

  def add_to_family name, gender 
    person = Person.new name, gender
    add person
    @terminal.print("#{person} added to family")
  end

  def add(person)
    @members << person
  end

end