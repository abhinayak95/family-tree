require_relative '../src/person.rb'

class Family
  attr_accessor :member

  def initialize
    @member = []
  end

  def add(member)
    @member << Person.new(member)
  end

  def members
    @member.map { |m| m.name}
  end

  def get_member(name)
    @member.select{|p| p.name == name}
  end

end