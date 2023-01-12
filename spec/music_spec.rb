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
end
