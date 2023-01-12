class Author
  attr_accessor :name, :items

  def initialize(name)
    @id = Random.rand(1..1000)
    @items = []
    @name = name
  end

  def add_item(item)
    @items.push(item)
    item.author = self
  end
end
