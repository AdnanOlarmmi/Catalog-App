class Author
  attr_reader :first_name, :last_name, :items

  def initialize(first_name, last_name)
    @id = Random.rand(1..1000)
    @items = []
    @first_name = first_name
    @last_name = last_name
  end

  def add_item(item)
    @items.push(item)
  end
end
