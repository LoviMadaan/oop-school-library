require_relative 'app'
require_relative 'refractor/logic'
SELECTION = {
  1 => :list_all_books,
  2 => :list_all_people,
  3 => :create_person,
  4 => :create_book,
  5 => :create_rental,
  6 => :list_all_rentals,
  7 => :exit
}.freeze

def app_start(logic_input, app)
  loop do
    logic_input.logic_display
    user_input = gets.chomp.to_i

    if SELECTION.key?(user_input)
      run = SELECTION[user_input]
      if run == :exit
        app.store_data_in_files('data/people.json', app.people)
        app.store_data_in_files('data/books.json', app.books)
        app.store_data_in_files('data/rentals.json', app.rentals)
        break
      end
      logic_input.send(run)
    else
      puts 'Enter the correct option: '
    end
  end
end

def main
  app = App.new
  app.books = app.get_data_from_files('data/books.json')
  app.people = app.get_data_from_files('data/people.json')
  app.rentals = app.get_data_from_files('data/rentals.json')
  logic_input = LogicInput.new(app)
  puts 'Welcome to the School Library App!'
  app_start(logic_input, app)
end
main
