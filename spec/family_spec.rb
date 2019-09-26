require_relative '../src/family.rb'
require_relative '../src/person.rb'
require_relative '../src/relative.rb'
require_relative '../src/relation_manager.rb'
require_relative '../spec/terminal_mock.rb'

RSpec.describe Family do

  @terminal = TerminalMock.new

  it 'creates a family class' do
    family = Family.new
    expect(family).to be_kind_of(Family)
  end

  it 'adds a person to family' do
    family = Family.new @terminal
    person = Person.new "person_name", "female"
    family.add person
    member = family.get_member "test"
    expect(member.get_name).to eq person_name
  end

  
end
