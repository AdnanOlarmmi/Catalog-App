require_relative './item'

class Genre
  attr_reader :id, :items, :name

  def initialize(name)
    @id = Random.rand(1...1000)
    @name = name
    @items = []
  end

  def add_item(item)
    @items.push(item)
  end
end
