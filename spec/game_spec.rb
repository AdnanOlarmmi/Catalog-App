require_relative '../classes/game'

describe Game do
  context 'Testing the game class'
  multiplayer = 'Multiplayer'
  last_played_date = '2020-10-05'
  publish_date = '2020-01-01'
  game = Game.new(multiplayer, last_played_date, publish_date)

  it 'should validate the game.mutiplayer value' do
    expect(game.multiplayer).to eq 'Multiplayer'
  end

  it 'should validate the game.pubish_date value' do
    expect(game.publish_date).to eq '2020-01-01'
  end

  it 'should validate the game.last_played_date value' do
    expect(game.last_played_date).to eq '2020-10-05'
  end
end
