class RemoveProgressValueFromDopaCoreActionType < ActiveRecord::Migration
  def change
    remove_column :dopa_core_action_types, :progress_value, :integer
  end
end
