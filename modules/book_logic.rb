require 'json'
require_relative '../classes/book'

module BookModule
  def load_book
    data = []
    file = './data/book.json'
    if File.exist?(file)
      JSON.parse(File.read(file)).each do |book|
        data.push(Book.new(book['title'], book['author'], book['publisher'], book['cover_state'], book['publish_data']))
      end
    else
      File.write(file, [])
    end
    data
  end

  def create_book
    data = []
    @books.each do |book|
      data.push({ title: book.title, author: book.author, publisher: book.publisher, cover_state: book.cover_state,
                  publish_date: book.publish_date })
    end
    File.write('./data/book.json', JSON.generate(data))
  end
end
