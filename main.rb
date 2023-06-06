require_relative 'app'
require_relative 'refractor/logic' \

SELECTIONS = {
  1 => :list_all_books,
  2 => :list_all_people,
  3 => :create_person,
  4 => :create_book,
  5 => :create_rental,
  6 => :list_all_rentals,
  7 => :exit_app
}.freeze

def app_start(logic_input)
  loop do
    logic_input.input_logic
    user_input = gets.chomp.to_i

    if SELECTIONS.key?(user_input)
      run = SELECTIONS[user_input]
      logic_input.send(run)
      break if run == :exit_app
    else
      puts 'Enter the correct option: '
    end
  end
end

def main
  app = App.new
  logic_input = LogicInput.new(app)
  puts 'Welcome to the OOP School Library App!'
  app_start(logic_input)
end
main
