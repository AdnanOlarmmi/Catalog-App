# require_relative 'app'
# require_relative 'logic'

def main
    #   app = App.new
    #   logic = Logic.new(app)
  
    puts "Welcome to my Catalog App!\n"
    option = nil
    while option != '13'
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
      option = gets.chomp
      # logic.run(option)
      puts
    end
    puts 'Thank you for using this app!'
  end
  
  main
  