class AddEmailToDopaCorePlayer < ActiveRecord::Migration
  def change
    add_column :dopa_core_players, :email, :string
  end
end
