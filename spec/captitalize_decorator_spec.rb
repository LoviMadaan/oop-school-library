require_relative '../capitalize_decorator'
require_relative '../person'
require_relative '../base_decorator'

describe CapitalizeDecorator do
  person = Person.new(28, 'regina', 'True')
  capitalize = CapitalizeDecorator.new(person)

  it 'takes an argument and returns an instance of CapitalizeDecorator' do
    expect(capitalize).to be_instance_of(CapitalizeDecorator)
  end
end
