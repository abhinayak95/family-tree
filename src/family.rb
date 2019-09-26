require_relative '../src/relative.rb'
require_relative '../src/person.rb'

class Family

  def initialize
  	@relation_manager = RelationManager.new @terminal, self
    @members = []
  end


  def get_member(name)
    person = @members.select { |member| member.get_name == name }.first
  end


  def add_all_members count
    for i in 1..count do 
      add_person
    end
  end


  def add_person name, gender 
    if validate_person_input name, gender == true
      add_to_family name, gender
      return true
    else 
      return false
    end
  end


  def add_relation
  	@relation_manager.add_relation
  end

  private

  def add_to_family name, gender
    person = Person.new name, gender
    add person
  end

  def validate_person_input name, gender
    if gender == nil 
      return false
    else
      add_to_family name, gender
      return true
    end
  end


  def add(person)
    @members << person
  end

end