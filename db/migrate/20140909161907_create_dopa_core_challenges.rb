class CreateDopaCoreChallenges < ActiveRecord::Migration
  def change
    create_table :dopa_core_challenges do |t|
      t.string :name
      t.integer :required_progress_points

      t.timestamps
    end
  end
end
