require_relative '../classes/label'

describe Label do
  title = 'africa'
  color = 'blue'
  label = Label.new(title, color)

  it 'should validate the title' do
    expect(label.title).to eq 'africa'
  end

  it 'should validate the color' do
    expect(label.color).to eq 'blue'
  end
end
