require_relative '../src/relative.rb'
require_relative '../src/person.rb'

class Family

  def initialize
  	@relation_manager = RelationManager.new @terminal, self
    @members = []
  end


  def get_member(name)
    @members.select { |member| member.get_name == name }.first
  end

  def members
    @members
  end

  def add_person name, gender 
    if validate_person name, gender
      add_to_family name, gender
      true
    else 
      false
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

  def validate_person _name, gender
    true if gender
  end


  def add(person)
    @members << person
  end

  def prefill(family)
    [%w(John\ Shakespeare Male), %w(Mary\ Arden Female),
     %w(Goan Female), %w(Margaret Female),
     %w(Gilbert Male), %w(Joan Female),
     %w(Anne Female), %w(Richard Male),
     %w(Edmund Male), %w(William Male),
     %w(Anne Hathaway Female), %w(Susanna Female),
     %w(John\ Hall Male), %w(Hamnet Male),
     %w(Judith Female), %w(Thomas\ Quiney Male),
     %w(Elizabeth Female), %w(Shakespeare Male),
     %w(Richard Male), %w(Thomas Male)].each do |person|
      family.add_person(person[0], person[1])
    end
  end

end