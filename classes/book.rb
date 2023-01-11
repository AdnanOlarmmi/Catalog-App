require_relative 'item'

class Book < Item
  attr_accessor :publisher, :cover_state, :title
  def initialize(title, publish_date, publisher, cover_state)
    super(name, publish_date)
    @title = title
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
