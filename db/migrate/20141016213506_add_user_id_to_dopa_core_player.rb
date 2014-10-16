class AddUserIdToDopaCorePlayer < ActiveRecord::Migration
  def change
    add_column :dopa_core_players, :user_id, :integer
  end
end
