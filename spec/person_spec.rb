require_relative '../person'

describe Person do
  context 'When a student or teacher is created' do
    it 'takes the age and name and returns an instance of the person' do
      person = Person.new(28, 'Regina', 'True')
      expect(person).to be_instance_of(Person)
    end

    it 'should have attributes' do
      person = Person.new(28, 'Regina', 'True')
      expect(person).to have_attributes(age: 28)
      expect(person).to have_attributes(name: 'Regina')
      expect(person).to have_attributes(parent_permission: 'True')
    end

    it 'the methods should work' do
      person = Person.new(28, 'Regina', 'True')
      expect(person.can_use_services?).to be true
    end
  end
end
