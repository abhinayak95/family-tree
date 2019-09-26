require_relative '../src/person.rb'

RSpec.describe Person do 

  it "creates a person with a name" do
    person = Person.new "Test1", "female"
    expect(person.get_name).to eq "Test1"
  end

  it "adds a relative to a person matches count" do 
	  person = add_relative
    expect(person.get_relatives.length).to eq 1
  end

  it "adds a relative to a person matches relation" do 
	  person = add_relative
    expect(person.get_relatives_for("father").length).to eq 1
  end


  def add_relative 
    person1 = Person.new "person1", "male"
    person2 = Person.new "person2", "female"
    relative = Relative.new "father", person2
    person1.add_relative relative
    person1
  end

end