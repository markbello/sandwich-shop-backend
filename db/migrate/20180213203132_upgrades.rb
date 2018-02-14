class Upgrades < ActiveRecord::Migration[5.1]
  def change
    create_table :upgrades do |t|
      t.string :name
      t.integer :cost
      t.float :sandwiches_per_second_modifier
      t.float :worker_cost_modifier
      t.integer :worker_id
    end
  end
end

#Cost of upgrade should scale to the amount of workers improved
#Ex. "Living Wage Upgrade".cost would be self.cost * worker_type.quantity
#    "Living Wage Upgrade".multiplier = self.multiplier * worker_type.quantity
