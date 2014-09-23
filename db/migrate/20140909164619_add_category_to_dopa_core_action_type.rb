class AddCategoryToDopaCoreActionType < ActiveRecord::Migration
  def change
    add_column :dopa_core_action_types, :category, :string
  end
end
