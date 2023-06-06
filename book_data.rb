require 'json'

class BookData
  attr_reader :books

  def initialize
    @books = []
    @books_length = 0
    @path = 'data/books.json'
  end

  def create_book
    title, author = get_book_data

    @books << Book.new(title, author)
    puts 'Book created successfully!'
    puts "\n"
  end

  def list_all_books
    if books.empty?
      puts 'There are no books yet.'
    else
      books.each_with_index do |book, index|
        puts "#{index + 1}. #{book.title} by #{book.author}"
      end
    end
  end

  def save_books_data
    return unless @books.length > @books_length

    if File.exist?(@path)
      if File.empty?(@path)
        save_books
      else
        append_books
      end
    end
  end

  def retrieved_books_data_from_file
    return unless File.exist?(@path) && !File.empty?(@path)

    retrieved_data = JSON.parse(File.read(@path))
    retrieved_data.each do |book|
      @books << Book.new(book['title'], book['author'])
    end
    @books_length = @books.length
  end
end
