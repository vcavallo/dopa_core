require 'spec_helper'

module DopaCore
  describe Player do

    describe "Attributes" do
      let(:player) { build(:dopa_core_player) }

      it "has a name" do
        expect(player.name).to eq "player one"
      end
    end

    describe "Associations" do

      it "has an Action" do
        player_action = create(:action_with_player)

        expect(Player.last.player_actions.size).to eq 1
      end

    end

  end
end
