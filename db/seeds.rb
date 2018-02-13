# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Shop.create(name:"Sandwich Shop", balance:0)

workerObjects = [
  {'name': 'Recent College Graduate', 'sandwiches': 1, 'quantity': 0, 'cost': 10, 'interval':4000, 'shop_id': 1},
  {'name': 'Mother', 'sandwiches': 2, 'quantity': 0, 'cost': 20, 'interval':1500, 'shop_id': 1},
  {'name': 'Sandwich Shop', 'sandwiches': 4, 'quantity': 0, 'cost': 30, 'interval':2000, 'shop_id': 1}
]

upgradeObjects = [
  {'name': 'Pay Raise', 'multiplier': 2, 'cost': 10, 'user':'Recent College Graduate', 'worker_id': 1},
  {'name': 'Return Phone Calls', 'multiplier': 4, 'cost': 100, 'user':'Mother', 'worker_id': 2}
]

workerObjects.each do |obj|
  Worker.create(obj)
end

upgradeObjects.each do |obj|
  Upgrade.create(obj)
end
