require_relative 'app'
require_relative './modules/book_module'
# require_relative 'logic'

class Main
include BookModule

    def initialize
       @books = load_book
    end
    def save_data
        create_book
    end
    def run
        # app = App.new
        #   logic = Logic.new(app)
        puts "Welcome to my Catalog App!\n"
        # option = nil
        # while option = '11'
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
        main_options
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
        else 
            puts 'invalid option'
        end
    end
end
  

def main
    app = App.new
    app.run
  end
  
main
  