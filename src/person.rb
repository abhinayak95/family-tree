require_relative '../src/relative.rb'

class Person

  def initialize(name, gender)
    @name = name
    @gender = gender
    @relatives = []
  end

  def get_name
    @name
  end

  def get_gender
    @gender
  end

  def get_relatives
  	@relatives
  end

  def get_relatives_for(relation)
  	@relatives.select { |relative| relative.get_relation == relation }
  end

  def add_relative(relative)
  	@relatives << relative
  end

  def to_s
    "#{@name}-#{@gender}"
  end

end
