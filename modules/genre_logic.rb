require 'json'
require '../classes/genre'

Module GenreModule
    def load_genres
        data = []
        file = './data/genre.json'
        if File.exist?(file)
            JSON.parse(File.read(file)).each do |genre|
                data.push(Genre.new(genre['name'], genre['description']))
            end
        else
            File.write(file, [])
        end

        data
    end

    def create_genre
        data = []
        @music_albums.each do |genre|
            data.push({id:genre.id, name: genre.name})
        end
        File.write('./data/genre.json', JSON.generate(data))
    end
end