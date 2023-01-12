class Author
  attr_reader :name, :items

  def initialize(name)
    @id = Random.rand(1..1000)
    @items = []
    @name = name
  end

  def add_item(item)
    @items.push(item)
  end
end

dummy = Author.new('John Doe')

puts dummy.name
