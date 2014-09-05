class AddNameToDopaCoreAction < ActiveRecord::Migration
  def change
    add_column :dopa_core_actions, :name, :string
  end
end
