require_relative '../src/relative.rb'

class Parent < Relative

	def initialize(parent, child)
      @parent = parent
      @child = child
      
  end

  def add_parent_relation
    if parent.get_gender == "male"
     	@relation = "father"
    else
     	@relation = "mother"
    end
  end

end