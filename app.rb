require_relative 'classes/author'
require_relative 'classes/book'
require_relative 'classes/game'
require_relative 'classes/genre'
require_relative 'classes/item'
require_relative 'classes/label'
require_relative 'classes/music_album'


class App
    def initialize
        @items = []
        @genres = []
        @labels = []
        @authors = []
    end

    def add_book
        puts "Please enter the title of the book:"
        title = gets.chomp
        puts "Please enter the author of the book."
        author = gets.chomp
        puts "Please enter the genre of the book."
        genre = gets.chomp
        puts "Please enter the publish date of the book"
        publish_date = gets.chomp
        puts "Please enter the Publisher of the book"
        publisher = gets.chomp
        puts "Please enter the cover state of the book(eg. good, bad)"
        cover_state = gets.chomp
        puts "is the book archived?"
        archived = gets.chomp

        book = Book.new(title, publish_date, publisher, cover_state, archived)

        @items.push(book)

    end

    def list_books
        books = @items.select { |item| item.is_a? Book }
        books.each do |book|
            puts book.name
        end
    end


end