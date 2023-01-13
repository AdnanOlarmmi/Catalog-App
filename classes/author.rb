class Author
  attr_accessor :full_name, :items

  def initialize(full_name)
    @id = Random.rand(1..1000)
    @items = []
    @full_name = full_name
  end

  def add_item(item)
    @items.push(item)
    item.author = self
  end
end
