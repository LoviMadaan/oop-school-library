require_relative 'rental'

class Book
  attr_accessor :title, :author, :rented

  def initialize(title, author)
    @title = title
    @author = author
    @rented = false
  end

  def add_rental(_rentals)
    @rentals << rental
  end
end
