require_relative 'item'

class Book < Item
  attr_accessor :title, :author, :publisher, :cover_state

  def initialize(title, author, publisher, cover_state, publish_date)
    super(name, publish_date)
    @title = title
    @author = author
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    if super || cover_state == 'bad'
      true
    else
      false
    end
  end
end

title = 'The Lord of the Rings'
author = 'J.R.R. Tolkien'
publish_date = '1954-07-29'
publisher = 'Allen & Unwin'
cover_state = 'good'
book = Book.new(title, author, publisher, cover_state, publish_date)

puts book.can_be_archived?
