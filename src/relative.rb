class Relative

  def initialize(relation, person)
    @relation = relation
    @person = person
  end

  def get_relation
    @relation
  end

  def get_relative
    @person
  end

  def to_s
    @relation
  end
end