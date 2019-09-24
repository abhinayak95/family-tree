require_relative '../src/relative.rb'
require_relative '../src/person.rb'

class Family

  def initialize
    @members = []
  end

  def add(person)
    @members << person
  end

  def get_member(name)
    person = @members.select { |member| member.get_name == name }.first
  end

end