require 'player'

describe Player do

subject(:nabille) { described_class.new('Nabille') }

  describe "#name" do
    it "should return the name of the player" do
      expect(nabille.name).to eq 'Nabille'
    end
  end

end
