require_relative 'rental'

class Book
  attr_accessor :title, :author, :rentals
  attr_reader :id

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
    @id = Random.rand(1...1000)
  end

  def add_rental(date, person)
    Rental.new(date, person, self)
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'title' => @title,
      'author' => @author,
      'rentals' => @rentals,
      'id' => @id
    }.to_json(*args)
  end
end
