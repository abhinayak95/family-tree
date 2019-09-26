require_relative '../src/relative.rb'

class Parent < Relative

	def initialize(parent, child)
      @person = parent
      if parent.get_gender == "Male"
      	@relation = "father"
      else
      	@relation = "mother"
      end
    end
end