require 'json'
require_relative '../classes/genre'

module GenreModule
  def load_genres
    data = []
    file = './data/genre.json'
    if File.exist?(file)
      JSON.parse(File.read(file)).each do |genre|
        data.push(Genre.new(genre['name']))
      end
    else
      File.write(file, [])
    end

    data
  end

  def create_genre
    data = []
    @genres.each do |genre|
      data.push({ id: genre.id, name: genre.name })
    end
    File.write('./data/genre.json', JSON.generate(data))
  end
end
