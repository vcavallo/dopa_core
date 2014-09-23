class AddProgressValuePointValueToDopaCoreAction < ActiveRecord::Migration
  def change
    add_column :dopa_core_actions, :progress_value, :integer
    add_column :dopa_core_actions, :point_value, :integer
  end
end
