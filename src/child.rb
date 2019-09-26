require_relative '../src/relative.rb'

class Child < Relative

	def initialize(child, parent)
      @parent = parent
      @child = child
      
  end

  def add_child_relation
    if child.get_gender == "male"
     	@relation = "son"
    else
     	@relation = "daughter"
    end
  end

end