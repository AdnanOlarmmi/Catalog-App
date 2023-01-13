require_relative '../classes/book'

describe Book do
  context 'Testing the Book Class'

  title = 'The Lord of the Rings'
  author = 'J.R.R. Tolkien'
  publish_date = '1954-07-29'
  publisher = 'Allen & Unwin'
  cover_state = 'bad'
  book = Book.new(title, author, publisher, cover_state, publish_date)

  it 'should validate the book.title value' do
    expect(book.title).to eq 'The Lord of the Rings'
  end

  it 'should validate the book.author value' do
    expect(book.author).to eq 'J.R.R. Tolkien'
  end

  it 'should validate the book.publish_date value' do
    expect(book.publish_date).to eq '1954-07-29'
  end

  it 'should validate the book.publisher value' do
    expect(book.publisher).to eq 'Allen & Unwin'
  end

  it 'should validate the book.cover_state value' do
    expect(book.cover_state).to eq 'bad'
  end

  it 'should validate can_be_archived method to true for bad and or more than ten years' do
    expect(book.can_be_archived?).to eq true
  end

  it 'should validate can_be_archived method to false for good and  less than ten years' do
    book.cover_state = 'good'
    book.publish_date = '2019-07-29'
    expect(book.can_be_archived?).to eq false
  end
end
