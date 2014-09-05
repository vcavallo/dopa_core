class AddNameToDopaCorePlayer < ActiveRecord::Migration
  def change
    add_column :dopa_core_players, :name, :string
  end
end
