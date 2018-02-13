class Upgrades < ActiveRecord::Migration[5.1]
  def change
    create_table :upgrades do |t|
      t.string :name
      t.integer :cost
      t.integer :multiplier
      t.string :user
      t.integer :worker_id
    end
  end
end
