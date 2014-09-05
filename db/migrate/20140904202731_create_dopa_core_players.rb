class CreateDopaCorePlayers < ActiveRecord::Migration
  def change
    create_table :dopa_core_players do |t|

      t.timestamps
    end
  end
end
