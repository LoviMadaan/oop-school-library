require_relative '../trimmer_decorator'
require_relative '../person'
require_relative '../base_decorator'
require 'rspec'

describe TrimmerDecorator do
  context 'When the name is a string characters' do
    it 'it takes a string and returns an instance of it' do
      person = Person.new(20, 'Aaradhya', 'Madaan')
      trimmer = TrimmerDecorator.new(person)
      expect(trimmer).to be_instance_of TrimmerDecorator
    end
  end
end
