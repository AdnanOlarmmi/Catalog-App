require_relative '../classes/author'

describe Author do
  context 'Testing the author class'
  name = 'Ahmed Nazir Musah'
  author = Author.new(name)

  it 'should validate the first name of the author' do
    expect(author.name).to eq 'Ahmed Nazir Musah'
  end
end
