require 'spec_helper'

module DopaCore
  describe Player do

    describe "Attributes" do
      let(:player) { build(:dopa_core_player) }

      it "has a name" do
        expect(player.name).to eq "player one"
      end

      it "has an email" do
        expect(player.email).to eq "player@one.com"
      end
    end

    describe "Associations" do

      it "has an Action" do
        player_action = create(:action_with_player)

        expect(Player.last.player_actions.size).to eq 1
      end

      let(:player) { build(:dopa_core_player) }
      let (:user) { build(:user) }
      it "belongs to a User" do
        player.should belong_to(:user)
      end

    end

    describe "Methods" do

      let(:player) { FactoryGirl.create(:dopa_core_player) }

      it "can get an action assigned to it" do
        expect(player.player_actions).to be_empty

        an_action = FactoryGirl.create(:dopa_core_action)
        player.add_action(an_action)

        expect(player.player_actions).not_to be_empty
        expect(player.player_actions.last.points_earned).to eq an_action.point_value
      end

      it "can get multiple actions assigned to it at once" do
        expect(player.player_actions).to be_empty

        an_action = FactoryGirl.create(:dopa_core_action)
        another_action = FactoryGirl.create(:another_action)
        player.add_actions([an_action, another_action])

        expect(player.player_actions.first.action_id).to eq an_action.id
        expect(player.player_actions.second.action_id).to eq another_action.id
      end

      it "can report its current point total" do
          first_action = FactoryGirl.create(:dopa_core_action)
          second_action = FactoryGirl.create(:another_action)

          player.add_actions([first_action, second_action])

          expect(player.total_score).to eq(
            first_action.point_value +
            second_action.point_value
          )
      end

    end
  end
end
