class AddChallengeIdToDopaCoreActionType < ActiveRecord::Migration
  def change
    add_column :dopa_core_action_types, :challenge_id, :integer
  end
end
