class AddHasCustomPointsToDopaCoreAction < ActiveRecord::Migration
  def change
    add_column :dopa_core_actions, :has_custom_points, :boolean
  end
end
