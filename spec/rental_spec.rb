require_relative '../person'
require_relative '../book'
require_relative '../rental'

describe Rental do
  context 'When a rental is initiated' do
    it 'takes three arguments and returns a rental instance' do
      book = Book.new('Things Fall Apart', 'Chinua Achebe')
      person = Person.new(25, 'Lovi', 'True')
      rental = Rental.new('6/25/2012', person, book)
      expect(rental).to be_instance_of(Rental)
    end

    it 'should have attributes' do
      book = Book.new('Things Fall Apart', 'Chinua Achebe')
      person = Person.new(25, 'Lovi', 'True')
      rental = Rental.new('6/25/2012', person, book)
      expect(person).to be_instance_of(Person)
      expect(book).to be_instance_of(Book)
      expect(rental).to be_instance_of(Rental)
    end
  end
end