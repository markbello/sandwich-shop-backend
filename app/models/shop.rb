class Shop < ApplicationRecord
  has_many :workers

  def seed
    workerObjects = [
      {'name': 'Recent College Graduate', 'sandwiches_per_second_modifier': 1, 'quantity': 0, 'cost': 10, 'shop_id': self.id},
      {'name': 'Mother', 'sandwiches_per_second_modifier': 2, 'quantity': 0, 'cost': 20, 'shop_id': self.id},
      {'name': 'Sandwich Shop', 'sandwiches_per_second_modifier': 4, 'quantity': 0, 'cost': 30, 'shop_id': self.id}
    ]

    workerObjects.each do |obj|
      newWorker = Worker.create(obj)
    end

  end
end
