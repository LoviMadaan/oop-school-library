module CreateRental
    require 'date'
  
    def create_rental
      # Get the book and person from the user.
      print 'Select a book from the following list by number (not id):'
      @books.each_with_index do |book, index|
        puts "#{index + 1}) #{book.title}"
      end
  
      book_choice = gets.chomp.to_i
      selected_book = @books[book_choice - 1]
  
      print 'Select a person from the following list by number (not id):'
      @people.each_with_index do |person, index|
        puts "#{index + 1}) #{person.name} (#{person.class})"
      end
  
      person_choice = gets.chomp.to_i
      selected_person = @people[person_choice - 1]
  
      # Create a new rental object.
      rental = Rental.new(Date.today, selected_person, selected_book)
  
      # Add the rental to the rentals array.
      @rentals << rental
  
      # Print a message indicating that the rental was created successfully.
      puts 'Rental created successfully!'
    end
end
