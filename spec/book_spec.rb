require_relative '../book'
require 'rspec'

describe Book do 
    it 'creates an instance of Book' do
        book = Book.new('Aaradhya', 'Madaan')
        expect(book).to be_instance_of Book
    end

    it 'has the correct attributes' do
        book = Book.new('Aaradhya', 'Madaan')
        expect(book).to have_attributes(title: 'Aaradhya', author: 'Madaan')
    end

    # it 'can add a rental' do
    #     book = Book.new('Aaradhya', 'Madaan')
    #     rental = Rental.new('20-2-2022', '23', 'Aaradhya')
    #     book.add_rental(rental)
    #     expect(book.rentals).to include(rental)
    # end
end
