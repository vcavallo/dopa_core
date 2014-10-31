module DopaCore
  class Leaderboard < ActiveRecord::Base

    # this should be flexible enough to:
    # - create a leaderboard for game-end
    # - create a leaderboard for global scope
    # - create a leaderboard for other smaller scopes
    # to do this, it should be able to:
    # - sum the actions that are relevant to the scope in question
    # - order by highest-lowest
    # - return a number of records desired in that order

    # leaderboard controller:
    # - expect the six filters (3 location, 3 time)
    # - return some fake data, but figure out the structure that will be returned

    def self.world_leaderboard

       players_in_order = Player.joins(:player_actions)
         .select("dopa_core_players.*, sum(dopa_core_player_actions.points_earned) as total_points")
         .group("dopa_core_players.id")
         .order("total_points DESC")

      format_leaderboard(players_in_order)
    end

    private

    def self.format_leaderboard(board)
       board.each_with_index.map do |player, index|
         {
           rank: index + 1,
           player_name: player.name,
           total_score: player.total_score
         }
       end
    end

  end
end
