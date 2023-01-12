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
require_relative './modules/author_logic'
require_relative './modules/games_logic'

class App
  include AuthorModule
  include BookModule
  include GenreModule
  include MusicAlbumModule
  include LabelModule
  include GamesModule
  def initialize
    @books = load_book
    @genres = load_genres
    @labels = load_label
    @music_albums = load_music_albums
    @authors = load_authors
    @games = load_games
  end

  def save_data
    create_games
    create_book
    create_genre
    create_music_album
    create_author
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
    when 3
      list_all_games
    when 4
      list_genres
    when 5
      list_all_labels
    when 6
      list_all_authors
    when 7
      add_book
    when 8
        add_music_album
    when 10
      add_game
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
    puts 'Enter the author\'s name'
    author = gets.chomp
    puts 'Please enter the Publisher of the book'
    publisher = gets.chomp
    puts 'Please enter the cover state of the book(eg. good, bad)'
    cover_state = gets.chomp
    puts 'book created'
    book = Book.new(title, author, publish_date, publisher, cover_state)
    @books.push(book)
    @authors.push(Author.new(author))
  end

  def add_music_album
    puts 'Add album name:'
    name = gets.chomp
    puts 'Publish_date'
    publish_date = gets.chomp
    puts 'On Spotify true or false'
    on_spotify = gets.chomp == 'true' ? true : false
    puts 'What genre is the above music'
    genre = gets.chomp
    @genres.push(Genre.new(genre))
    @music_albums.push(MusicAlbum.new(name, publish_date, on_spotify))
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
      puts "Author's name is: #{author['name']}"
    end
  end
end
