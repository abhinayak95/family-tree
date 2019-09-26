class Relative

  def initialize(relation, person)
    @relation = relation
    @person = person
  end

  def get_relation
    @relation
  end

  def get_person
    @person
  end

  def to_s
    "#{@person}  #{@relation}"
  end
end