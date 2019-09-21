class Relation

  def initialize()
    @list = []
  end

  def add(person, relation)
    @list << {relative: person, relation: relation}
  end

end