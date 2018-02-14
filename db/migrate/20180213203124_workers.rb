class Workers < ActiveRecord::Migration[5.1]
  def change
    create_table :workers do |t|
      t.string :name
      t.float :sandwiches_per_second_modifier
      t.integer :quantity
      t.integer :cost
      t.integer :shop_id
    end
  end
end
