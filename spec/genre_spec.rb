require_relative '../classes/genre'

describe Genre do
  context 'Testing the genre class'
  name = 'Action'
  genre = Genre.new(name)

  it 'should validate the name of the genre' do
    expect(genre.name).to eq 'Action'
  end
end
