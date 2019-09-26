
require_relative '../src/parent.rb'
require_relative '../src/child.rb'

class RelationManager

  def initialize family
      @family = family
  end

  def add_parent_child person1_name, person2_name
      person1 = get_person person1_name
      person2 = get_person person2_name
      add_parent person1, person2
      add_child person2, person1
  end

  def add_child_parent person1_name, person2_name
    person1 = get_person person1_name
    person2 = get_person person2_name
    add_child person1, person2
    add_parent person2, person1
  end

  def add_parent person1, person2
  	relative = Parent.new person1, person2
  	person2.add_relative relative

  end

  def add_child person1, person2
  	relative = Child.new person1, person2
  	person2.add_relative relative
  end

  def get_all_relative_for name, relation
    person = get_person name
    relatives = person.get_relatives
  end

  def prefill
    add_parent_child "John\ Shakespeare", "Goan"
    add_parent_child "John\ Shakespeare", "Margaret"
    add_parent_child "John\ Shakespeare", "Gilbert"
    add_parent_child "John\ Shakespeare", "Joan"
    add_parent_child "John\ Shakespeare", "Anne"
    add_parent_child "John\ Shakespeare", "Richard"
    add_parent_child "John\ Shakespeare", "Edmund"
    add_parent_child "John\ Shakespeare", "William"
    add_parent_child "William", "Susanna"
    add_parent_child "William", "John\ Hall"
    add_parent_child "William", "Hamnet"
    add_parent_child "William", "Judith"
    add_parent_child "William", "Thomas"
    add_parent_child "Susanna", "Elizabeth"
    add_parent_child "Judith", "Shakespeare"
    add_parent_child "Judith", "Richard"
    add_parent_child "Judith", "Thomas"
  end

  private

  def get_person name 
    person = @family.get_member name
    return person
  end

end