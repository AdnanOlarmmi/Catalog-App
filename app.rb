require_relative 'classes/author'
require_relative 'classes/book'
require_relative 'classes/game'
require_relative 'classes/genre'
require_relative 'classes/item'
require_relative 'classes/label'
require_relative 'classes/music_album'

require_relative './modules/book_logic'
require_relative './modules/genre_logic'
require_relative './modules/label_logic'
require_relative './modules/music_logic'

class App
  include BookModule
  include GenreModule
  include MusicAlbumModule
  include LabelModule
  def initialize
    @books = load_book
    @genres = load_genres
    @labels = load_label
    @music_albums = load_music_albums
  end

  def save_data
    create_book
    create_genre
    create_music_album
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
    when 4
      list_genres
    when 5
      list_all_labels
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
    puts 'Please enter the title of the book:'
    title = gets.chomp
    puts 'Please enter the publish date of the book'
    publish_date = gets.chomp
    puts 'Please enter the Publisher of the book'
    publisher = gets.chomp
    puts 'Please enter the cover state of the book(eg. good, bad)'
    cover_state = gets.chomp
    puts 'book created'
    book = Book.new(title, publish_date, publisher, cover_state)
    @books.push(book)
  end

  def add_music_album
    puts 'Add album name:'
    name = gets.chomp
    puts 'Publish_date'
    publish_date = gets.chomp
    puts 'On Spotify true or false'
    on_spotify = gets.chomp
    @music_album.push(MusicAlbum.new(name, publish_date, on_spotify))
    puts 'Music album added'
  end

  def list_all_labels
    puts 'no labels yet!' if @labels.empty?
    @labels.each do |label|
      puts "Title: #{label.title}, color: #{label.color}"
    end
  end

  def list_books
    puts 'There are no books yet!' if @books.empty?
    @books.each do |book|
      puts "Title: #{book.title}, Publisher: #{book.publisher}, Publish Date: #{book.publish_date},
          Cover state: #{book.cover_state}"
    end
  end

  def list_genres
    puts 'There are no genres yet!' if @genres.empty?
    @genres.each do |genre|
      puts "Name: #{genre.name}"
    end
  end
  def add_game
    puts 'Please write multiplayer: '
    multiplayer = gets.chomp
  
    puts 'Please write date of publish [Enter date (yyyy-mm-dd)]'
    publish_date = gets.chomp
  
    puts 'Please write last played date [Enter date (yyyy-mm-dd)]'
    last_played_date = gets.chomp
  
    @games.push(Game.new(multiplayer, publish_date, last_played_date))
    puts 'Game is created'
  end
  
  def list_all_games
    puts 'Games:'
    @games.each do |games|
      puts "Multiplayer: #{games.multiplayer}, Publish Date: #{games.publish_date},
      Last played date: #{games.last_played_date}"
    end
  end
  
  def list_all_authors
    puts 'There are no authors yet!' if @authors.empty?
    @authors.each do |author|
      puts "first name: #{author.first_name}, last name: #{author.last_name}"
    end
  end
end
