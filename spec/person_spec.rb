require_relative '../person'
require_relative '../rental'

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

RSpec.describe Person do
  let(:person) { Person.new(28, 'Regina', 'True') }

  describe '#can_use_services?' do
    context 'when the person is of age' do
      it 'returns true' do
        person.age = 28
        expect(person.can_use_services?).to eq(true)
      end
    end
  end

  describe '#add_rental' do
    context 'when the person is of age' do
      it 'returns true' do
        book = Book.new('Things Fall Apart', 'Chinua Achebe')
        rental = Rental.new('6/25/2012', person, book)
        person.add_rental(rental, book)
        expect(person.rentals).to eq([rental])
        expect(person.books).to eq([book])
      end
    end
  end

  describe '#of_age?' do
    context 'when the person is of age' do
      it 'returns true' do
        person.age = 28
        expect(person.send(:of_age?)).to eq(true)
      end
    end
  end
end
