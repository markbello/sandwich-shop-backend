class Workers < ActiveRecord::Migration[5.1]
  def change
    create_table :workers do |t|
      t.string :name
      t.integer :sandwiches
      t.integer :quantity
      t.integer :cost
      t.integer :interval
      t.integer :shop_id
    end
  end
end
