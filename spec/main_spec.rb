# require_relative '../src/family.rb'
# require_relative '../src/person.rb'
# require_relative '../src/relative.rb'
# require_relative '../src/main.rb'

# RSpec.describe Main do

#   it 'adds a person to family' do
#   	person_name = "test"
#     main = Main.new
#     person = Person.new person_name, "female"
#     main.add_to_family person
#     member = main.get_person "test"
#     expect(member.get_name).to eq person_name
#   end

#   it 'adds a relation to person' do
#     main = Main.new
#     person1 = Person.new "person1", "female"
#     person2 = Person.new "person2", "female"
#     main.add_to_family person1
#     main.add_to_family person2
#     main.add_relation "person1", "person2", "father"
#     person = main.get_person "person1"
#     father = person.get_relatives_for "father"
#     expect(father.first.get_relative.get_name).to eq "person2"
#   end
  
  
# end