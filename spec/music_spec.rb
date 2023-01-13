require_relative '../classes/music_album'

describe MusicAlbum do
  context 'Testing the music class'
  name = 'Afro beats'
  publish_date = '2023-01-12'
  on_spotify = 'true'
  music = MusicAlbum.new(name, publish_date, on_spotify)

  it 'should validate the first name of the music' do
    expect(music.name).to eq 'Afro beats'
  end

  it 'should validate the publish_date' do
    expect(music.publish_date).to eq '2023-01-12'
  end

  it 'should validate on_spotify' do
    expect(music.on_spotify).to eq 'true'
  end

  it 'should validate the can_be_archived? method for less than 10years' do
    expect(music.can_be_archived?).to eq false
  end

  it 'Should validate the archived property for more than 10years and on_spotify is true as true' do
    music.publish_date = '2009-01-01'
    expect(music.move_to_archive).to eq true
  end
end
