require 'json'
require_relative '../classes/author'
require_relative '../classes/book'

module AuthorModule
    def load_authors
        data = []
        file = './data/authors.json'
        if File.exist(file)
            JSON.parse(File.read(file)).each do |author|
                data.push(Author.new(author['name']))
            end
        else
            File.write(file, [])
        end
    end

    def create_author
        data = []
        @authors.each do |author|
            data.push({name: author.name})
        end

        File.write('./data/authors.json', JSON.generate(data))
    end
end
