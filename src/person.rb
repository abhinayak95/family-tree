require_relative '../src/relation.rb'

class Person
  attr_accessor :name, :gender, :relations

  def initialize(name, gender)
    @name = name
    @gender = gender
    @relations = Relation.new
  end

  def related_to(person, relation)
    @relations.add(person, relation)
  end
end