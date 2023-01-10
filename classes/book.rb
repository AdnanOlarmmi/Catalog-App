require_relative 'item'

class Book < Item 
    attr_reader :name, :publisher, :cover_state

    def initialize(name, publish_date, publisher, cover_state, archived: false)
        super(publish_date, archived: false)
        @name = name
        @publisher = publisher
        @cover_state = cover_state
    end

    def can_be_archived?   
        # Item.can_be_archived? 
        super || @cover_state == 'bad'
    end
end

puts Book.new('1984', '2020-09-21', 'Penguin', 'bad').can_be_archived?