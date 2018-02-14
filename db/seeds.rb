# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Shop.create(name:"Sandwich Shop", balance:0, sandwiches_per_second: 0)

workerObjects = [
  {'name': 'Recent College Graduate', 'sandwiches_per_second_modifier': 1, 'quantity': 0, 'cost': 10, 'shop_id': 1},
  {'name': 'Mother', 'sandwiches_per_second_modifier': 2, 'quantity': 0, 'cost': 20, 'shop_id': 1},
  {'name': 'Sandwich Shop', 'sandwiches_per_second_modifier': 4, 'quantity': 0, 'cost': 30, 'shop_id': 1}
]

upgradeObjects = [
  {'name': 'Pay Raise', 'sandwiches_per_second_modifier': 2, 'cost': 10, 'worker_cost_modifier':1.2, 'worker_id': 1},
  {'name': 'Return Phone Calls', 'sandwiches_per_second_modifier': 4, 'cost': 10, 'worker_cost_modifier':1.2, 'worker_id': 2}
]

workerObjects.each do |obj|
  Worker.create(obj)
end

upgradeObjects.each do |obj|
  Upgrade.create(obj)
end
