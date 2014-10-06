class AddPointsEarnedToPlayerAction < ActiveRecord::Migration
  def change
    add_column :dopa_core_player_actions, :points_earned, :integer
  end
end
