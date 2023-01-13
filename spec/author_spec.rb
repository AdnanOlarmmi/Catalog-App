require_relative '../classes/author'

describe Author do
  context 'Testing the author class'
  full_name = 'Ahmed Nazir Musah'
  author = Author.new(full_name)

  it 'should validate the first name of the author' do
    expect(author.full_name).to eq 'Ahmed Nazir Musah'
  end
end
