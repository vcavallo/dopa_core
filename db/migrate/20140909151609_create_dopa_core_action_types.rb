class CreateDopaCoreActionTypes < ActiveRecord::Migration
  def change
    create_table :dopa_core_action_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
