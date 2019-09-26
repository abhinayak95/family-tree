require_relative '../src/relative.rb'

class Child < Relative

	def initialize(child, parent)
      @person = child
      @child = child
      add_child_relation
  end

  def add_child_relation
    if @child.get_gender == "Male"
     	@relation = "son"
    else
     	@relation = "daughter"
    end
  end

end