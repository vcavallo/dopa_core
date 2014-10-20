class RemoveEmailFromDopaCorePlayers < ActiveRecord::Migration
  def change
    remove_column :dopa_core_players, :email, :string
  end
end
