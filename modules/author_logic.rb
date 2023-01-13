require 'json'
require_relative '../classes/author'

module AuthorModule
  def load_authors
    data = []
    file = './data/authors.json'
    if File.exist?(file)
      JSON.parse(File.read(file)).each do |author|
        data.push(Author.new(author['full_name']))
      end
    else
      File.write(file, [])
    end
    data
  end

  def create_author
    data = []
    @authors.each do |author|
      data.push({ full_name: author.full_name })
    end
    File.write('./data/authors.json', JSON.generate(data))
  end

end
