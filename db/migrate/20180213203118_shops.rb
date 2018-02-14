class Shops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.string :name
      t.float :balance
      t.float :sandwiches_per_second
    end
  end
end
