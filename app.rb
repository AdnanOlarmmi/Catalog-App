require_relative 'classes/author'
require_relative 'classes/book'
require_relative 'classes/game'
require_relative 'classes/genre'
require_relative 'classes/item'
require_relative 'classes/label'
require_relative 'classes/music_album'


require_relative './modules/book_logic'

class App
    include BookModule
    def initialize
        @books = load_book
     end
     def save_data
         create_book
     end
     def run
  
         puts "Welcome to my Catalog App!\n"
         puts 'Please choose an option by entering a number:'
         puts '1 - List all books'
         puts '2 - List all music albums'
         puts '3 - List of games'
         puts '4 - List all genres'
         puts '5 - List all labels'
         puts '6 - List all authors'
         puts '7 - Add a book'
         puts '8 - Add a music album'
         puts '9 - Add a movie'
         puts '10 - Add a game'
         puts '11 - Exit'
         option = gets.chomp.to_i
         input(option)
         run
     end
 
     def input(option)
         case option
         when 1
             list_books
         when 7
             add_book
         when 11
             save_data
             puts 'Thank you'
             exit
         else 
             puts 'invalid option'
         end
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
        puts "book created"
        book = Book.new(title, publish_date, publisher, cover_state)
        @books.push(book)
    end

    def list_books
        puts 'There are no books yet!' if @books.empty?
        @books.each do |book|
          puts "Title: #{book.title}, Publisher: #{book.publisher}, Publish Date: #{book.publish_date},
          Cover state: #{book.cover_state}"
        end
      end
end