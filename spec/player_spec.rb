require 'player'
describe Player do

  subject(:player) { Player.new('Mario') }

  describe '#name' do
    it 'Returns name' do
    expect(player.name).to eq('Mario')
    end
  end
end