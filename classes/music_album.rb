require_relative 'item'

class MusicAlbum < Item
  attr_accessor :on_spotify
  attr_reader :items

  def initialize(name, publish_date, on_spotify)
    super(name, publish_date)
    @on_spotify = on_spotify
    @items = []
  end

  def can_be_archived?
    super && @on_spotify
  end
end
