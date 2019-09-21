class Family

  attr_accessor :member

  def initialize
    @member = []
  end

  def add(person)
    @member << person
  end

  def get_root_member
    person = @member.first
    person.get_name
  end

end