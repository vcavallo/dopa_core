class AddActionTypeIdToDopaCoreActions < ActiveRecord::Migration
  def change
    add_column :dopa_core_actions, :action_type_id, :integer
  end
end
