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
    puts '2 - List all labels'
    puts '3 - List all Music Albums'
    puts '4 - List all Genres'
    puts '5 - List all Games'
    puts '6 - List all Authors'
    puts '7 - Create a book'
    puts '8 - Create a label'
    puts '9 - Create a Music Album'
    puts '10 - Create a Genre'
    puts '11 - Create a Game'
    puts '12 - Create an Author'
    puts '13 - Exit'
    option = gets.chomp
    # logic.run(option)
    puts
  end
  puts 'Thank you for using this app!'
end

main
