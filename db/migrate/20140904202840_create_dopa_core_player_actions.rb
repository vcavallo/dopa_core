class CreateDopaCorePlayerActions < ActiveRecord::Migration
  def change
    create_table :dopa_core_player_actions do |t|
      t.integer :player_id
      t.integer :action_id

      t.timestamps
    end
  end
end
