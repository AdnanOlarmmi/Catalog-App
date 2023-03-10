require_relative '../classes/game'

describe Game do
  context 'Testing the game class'
  multiplayer = 'Multiplayer'
  last_played_date = '2020-10-05'
  publish_date = '2009-01-01'
  game = Game.new(multiplayer, last_played_date, publish_date)

  it 'should validate the game.mutiplayer value' do
    expect(game.multiplayer).to eq 'Multiplayer'
  end

  it 'should validate the game.pubish_date value' do
    expect(game.publish_date).to eq '2009-01-01'
  end

  it 'should validate the game.last_played_date value' do
    expect(game.last_played_date).to eq '2020-10-05'
  end

  it 'Should validate the archived property for played date more than two years and super is true as true' do
    expect(game.can_be_archived?).to eq true
  end

  it 'Should validate the archived property for played date less than two years or super is false as false' do
    game.last_played_date = '2022-01-01'
    expect(game.can_be_archived?).to eq false
  end
end
