require 'spec_helper'

module DopaCore
  describe PlayerAction do
    describe "Associations" do

      it "belongs to a Player" do
        player_action = create(:action_with_player)

        expect(player_action.player).to be_a_kind_of(Player)
      end

      it "belongs to an Action" do
        player_action = create(:action_with_player)

        expect(player_action.action).to be_a_kind_of(Action)
      end

    end
  end
end
