require 'spec_helper'

module DopaCore
  describe Leaderboard do
    context "World Leaderboard" do
      let!(:player_one) { FactoryGirl.create(:player_for_leaderboard, name: "Player One") }
      let!(:player_two) { FactoryGirl.create(:player_for_leaderboard, name: "Player Two") }
      let!(:player_three) { FactoryGirl.create(:player_for_leaderboard, name: "Player Three") }

      player_one_points = [10]
      let!(:player_one_action_one) {
        FactoryGirl.create(:leaderboard_player_action, player: player_one, points_earned: player_one_points[0])
      }

      player_two_points = [20, 20, 35, 50]
      let!(:player_two_action_one) {
        FactoryGirl.create(:leaderboard_player_action, player: player_two, points_earned: player_two_points[0])
      }
      let!(:player_two_action_two) {
        FactoryGirl.create(:leaderboard_player_action, player: player_two, points_earned: player_two_points[1])
      }
      let!(:player_two_action_three) {
        FactoryGirl.create(:leaderboard_player_action, player: player_two, points_earned: player_two_points[2])
      }
      let!(:player_two_action_four) {
        FactoryGirl.create(:leaderboard_player_action, player: player_two, points_earned: player_two_points[3])
      }

      player_three_points = [10, 10]
      let!(:player_three_action_one) {
        FactoryGirl.create(:leaderboard_player_action, player: player_three, points_earned: player_three_points[0])
      }
      let!(:player_three_action_two) {
        FactoryGirl.create(:leaderboard_player_action, player: player_three, points_earned: player_three_points[1])
      }

      let(:board) { Leaderboard.world_leaderboard }

      it "determines a global leaderboard of players" do
        expect(board.first[:player_name]).to eq player_two.name
      end

      it "orders all players by total score" do
        expect(
          (board.first[:total_score] > board.second[:total_score]) \
            && (board.first[:total_score] > board.last[:total_score])
          ).to eq true
        expect(
          (board.last[:total_score] < board.second[:total_score]) \
            && (board.last[:total_score] < board.first[:total_score])
          ).to eq true
      end

      it "returns player scores along with player names" do
        expect(board[0][:total_score]).to eq(player_two_points.inject{ |sum, x| sum + x} )
      end

      it "ascribes a rank to each player in the leaderboard" do
        expect(board[0][:rank]).to eq 1
        expect(board[2][:rank]).to eq 3
      end

    end
  end
end


