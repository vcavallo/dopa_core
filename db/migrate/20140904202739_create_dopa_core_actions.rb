class CreateDopaCoreActions < ActiveRecord::Migration
  def change
    create_table :dopa_core_actions do |t|

      t.timestamps
    end
  end
end
